#include "backward_flow.hh"
#include "utils.hh"
#include <queue>

BackwardFlowAnalysis::BackwardFlowAnalysis(
    std::shared_ptr<TAC_Code> code, std::shared_ptr<GlobalSymbolTable> symtab)
    : tac_code(code), symtab(symtab) {
    while (lines_removed) {
        lines_removed = false;
        tac_code->build_cfg();
        doAnalysis();
        remove_lines();
    }
    if (tac_code->get_code().size() > 0) {
        std::shared_ptr<TAC_Stmt> line = tac_code->get_code()[0];
        for (auto entry : inout.at(line)->in) {
            if (std::holds_alternative<std::shared_ptr<SymTabEntry>>(entry) &&
                !(std::get<std::shared_ptr<SymTabEntry>>(entry)->is_global()) && !(std::get<std::shared_ptr<SymTabEntry>>(entry)->is_param()))
                    Error::warn(std::get<std::shared_ptr<SymTabEntry>>(entry)->get_name() + " is being used before a definition!!!");
        }
    }
}

void BackwardFlowAnalysis::doAnalysis() {
    std::vector<std::shared_ptr<TAC_Stmt>> code = tac_code->get_code();

    for (std::shared_ptr<TAC_Stmt> stmt : code) {
        inout.insert({stmt, std::make_shared<Params>()});
        if (stmt->get_stmt_type() == TAC_Stmt_Type::CALL) {
            inout.at(stmt)->in.insert(symtab->get_globals().begin(),
                                      symtab->get_globals().end());
        }
    }
    if (code.size() > 0)
        inout.at(code.back())
            ->out.insert(symtab->get_globals().begin(),
                         symtab->get_globals().end());

    std::deque<std::shared_ptr<TAC_Stmt>> worklist(code.begin(), code.end());

    while (worklist.size()) {
        std::shared_ptr<TAC_Stmt> line = worklist.front();
        worklist.pop_front();

        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> out;

        for (std::weak_ptr<TAC_Stmt> stmt : line->get_successors()) {
            std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> tempin =
                inout.at(stmt.lock())->in;
            out.insert(tempin.begin(), tempin.end());
        }

        inout.at(line)->out = out;

        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> new_in;
        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> gen =
            line->get_gen();
        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> kill =
            line->get_kill();

        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> diff;

        std::set_difference(out.begin(), out.end(), kill.begin(), kill.end(),
                            std::inserter(diff, diff.begin()));

        std::set_union(gen.begin(), gen.end(), diff.begin(), diff.end(),
                       std::inserter(new_in, new_in.begin()));

        if (new_in != inout.at(line)->in) {
            inout.at(line)->in = new_in;
            for (const std::weak_ptr<TAC_Stmt> &pred :
                 line->get_predecessors()) {
                worklist.push_back(pred.lock());
            }
        }
    }
}

void BackwardFlowAnalysis::remove_lines() {
    std::vector<std::shared_ptr<TAC_Stmt>> lines_to_remove;
    for (std::shared_ptr<TAC_Stmt> line : tac_code->get_code()) {
        // line->print(std::cout);
        // std::cout << "IN: ";
        // for (std::shared_ptr<SymTabEntry> in : inout.at(line)->in) {
        //     // in->print(std::cout);
        //     std::cout << in << " ";
        // }
        // std::cout << std::endl;
        // std::cout << "OUT: ";
        // for (std::shared_ptr<SymTabEntry> in : inout.at(line)->out) {
        //     // in->print(std::cout);
        //     std::cout << in << " ";
        // }
        // std::cout << std::endl;

        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> intersection;
        std::set_intersection(
            inout.at(line)->out.begin(), inout.at(line)->out.end(),
            line->get_kill().begin(), line->get_kill().end(),
            std::inserter(intersection, intersection.begin()));
        // std::cout << "Intersection size: " << intersection.size() <<
        // std::endl; line->print(std::cout);
        if (intersection.size() == 0) {
            lines_to_remove.push_back(line);
            // } else {
            // std::cout << "Intersection: " << std::endl;
            // (*intersection.begin())->print(std::cout);
            // std::cout << std::endl;
        }
    }

    for (std::shared_ptr<TAC_Stmt> line : lines_to_remove) {
        if (line->get_stmt_type() == TAC_Stmt_Type::ASSIGN &&
            !(std::dynamic_pointer_cast<Assign_TAC_Stmt>(line)->has_call())) {
            lines_removed = true;
            tac_code->remove_line(line);
        }
    }
}
