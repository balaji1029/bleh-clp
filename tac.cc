#include "tac.hh"

int Label_TAC_Opd::index = 0;

void TAC_Code::append(std::shared_ptr<TAC_Stmt> stmt) { tacStmts.push_back(stmt); }

void TAC_Code::append(std::shared_ptr<TAC_Code> code) {
    tacStmts.insert(tacStmts.end(), code->tacStmts.begin(), code->tacStmts.end());
}

Assign_TAC_Stmt::Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd> lOpd, std::shared_ptr<TAC_Expr> expr)
    : lOpd(lOpd), expr(expr) {}

Goto_TAC_Stmt::Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd> label) : label(label) {}

If_Goto_TAC_Stmt::If_Goto_TAC_Stmt(std::shared_ptr<Temporary_TAC_Opd> cond, std::shared_ptr<Label_TAC_Opd> label)
    : cond(cond), label(label) {}

IO_TAC_Stmt::IO_TAC_Stmt(IO_Opd opd, std::shared_ptr<TAC_LOpd> var) : opd(opd), var(var) {}

Label_TAC_Stmt::Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd> label) : label(label) {}

Float_Const_TAC_Opd::Float_Const_TAC_Opd(double value) : value(value) {}

Int_Const_TAC_Opd::Int_Const_TAC_Opd(int value) : value(value) {}

Str_Const_TAC_Opd::Str_Const_TAC_Opd(std::string value) : value(value) {}

Label_TAC_Opd::Label_TAC_Opd() { label_index = index++; }

Temporary_TAC_Opd::Temporary_TAC_Opd(int temp_num) : temp_mum(temp_mum) {}

STemporary_TAC_Opd::STemporary_TAC_Opd(int temp_num) : Temporary_TAC_Opd(temp_num) {}

Variable_TAC_Opd::Variable_TAC_Opd(std::shared_ptr<SymTabEntry> entry) : entry(entry) {}
