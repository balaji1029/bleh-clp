#include "backward_flow.hh"
#include <queue>

// struct Var_TAC_Opd_Cmp {
//     bool operator() (
//         const std::shared_ptr<TAC_LOpd>& a,
//         const std::shared_ptr<TAC_LOpd>& b
//     ) const {
//         if (a->get_opd_type() == TAC_Opd_Type::VAR && b->get_opd_type() ==
//         TAC_Opd_Type::VAR) {
//             return std::dynamic_pointer_cast<Variable_TAC_Opd>(a)->entry <
//             std::dynamic_pointer_cast<Variable_TAC_Opd>(b)->entry;
//         } else if (a->get_opd_type() == TAC_Opd_Type::TEMP &&
//         b->get_opd_type() == TAC_Opd_Type::TEMP) {
//             return std::dynamic_pointer_cast<Temporary_TAC_Opd>(a)->temp_num
//             < std::dynamic_pointer_cast<Temporary_TAC_Opd>(b)->temp_num;
//         } else {
//             return a < b;
//         }
//     }
// };

BackwardFlowAnalysis::BackwardFlowAnalysis(std::shared_ptr<TAC_Code> code)
    : tac_code(code) {
    while (lines_removed) {
        lines_removed = false;
        tac_code->build_cfg();
        doAnalysis();
        remove_lines();
    }
    // std::cout << "yo" << std::endl;
    // tac_code->print(std::cout);
    // std::cout << std::endl;
}

void BackwardFlowAnalysis::doAnalysis() {
    std::vector<std::shared_ptr<TAC_Stmt>> code = tac_code->get_code();

    for (std::shared_ptr<TAC_Stmt> stmt : code) {
        inout.insert({stmt, std::make_shared<Params>()});
    }

    std::deque<std::shared_ptr<TAC_Stmt>> worklist(code.begin(), code.end());

    while (worklist.size()) {
        std::shared_ptr<TAC_Stmt> line = worklist.front();
        worklist.pop_front();

        std::set<std::string> out;

        for (std::weak_ptr<TAC_Stmt> stmt : line->get_successors()) {
            std::set<std::string> tempin = inout.at(stmt.lock())->in;
            out.insert(tempin.begin(), tempin.end());
        }

        inout.at(line)->out = out;

        std::set<std::string> new_in;
        std::set<std::string> gen = line->get_gen();
        std::set<std::string> kill = line->get_kill();

        std::set<std::string> diff;

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
        // for (std::string in : inout.at(line)->in) {
        //     // in->print(std::cout);
        //     std::cout << in << " ";
        // }
        // std::cout << std::endl;
        // std::cout << "OUT: ";
        // for (std::string in : inout.at(line)->out) {
        //     // in->print(std::cout);
        //     std::cout << in << " ";
        // }
        // std::cout << std::endl;

        std::set<std::string> intersection;
        std::set_intersection(
            inout.at(line)->out.begin(), inout.at(line)->out.end(),
            line->get_kill().begin(), line->get_kill().end(),
            std::inserter(intersection, intersection.begin()));
        // std::cout << "Intersection size: " << intersection.size() << std::endl;
        // line->print(std::cout);
        if (intersection.size() == 0) {
            lines_to_remove.push_back(line);
            // } else {
            // std::cout << "Intersection: " << std::endl;
            // (*intersection.begin())->print(std::cout);
            // std::cout << std::endl;
        }
    }

    for (std::shared_ptr<TAC_Stmt> line : lines_to_remove) {
        if (line->get_stmt_type() == TAC_Stmt_Type::ASSIGN) {
            lines_removed = true;
            tac_code->remove_line(line);
        }
    }
}
