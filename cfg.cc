#include "cfg.hh"

Cfg::Cfg(std::shared_ptr<TAC_Code> code) : code(code) {}

void Cfg::mark_leaders() {}

void TAC_Code::mark_leaders() {
    if (tacStmts.size() > 0) {
        tacStmts[0]->mark_leader();
    }

    for (size_t i = 0; i < tacStmts.size(); i++) {
        switch (tacStmts[i]->get_stmt_type()) {
        case TAC_Stmt_Type::LABEL:
            tacStmts[i]->mark_leader();
            break;
        case TAC_Stmt_Type::GOTO:
        case TAC_Stmt_Type::IF_GOTO:
            if ((i + 1) < tacStmts.size()) {
                tacStmts[i + 1]->mark_leader();
            }
            break;
        default:
            break;
        }
    }
}