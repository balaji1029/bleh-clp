#include "unreachable.hh"

Unreachable::Unreachable(std::shared_ptr<TAC_Code> code)
    : tac_code(code), symtab(symtab) {
    if (tac_code->is_empty())
        return;
    
    tac_code->build_cfg();
    std::set<std::shared_ptr<TAC_Stmt>> lines_reachable;

    auto check = [&] (auto self, std::shared_ptr<TAC_Stmt> line) -> void {
        if (lines_reachable.find(line) == lines_reachable.end()) {
            lines_reachable.insert(line);
            for (auto next_line : line->get_successors()) {
                self(self, next_line.lock());
            }
        }
    };

    check(check, tac_code->get_code()[0]);

    auto code_copy = tac_code->get_code();

    for (auto line : code_copy) {
        if (lines_reachable.find(line) == lines_reachable.end()) {
            tac_code->remove_line(line);
        }
    }
}