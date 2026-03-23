#include "rtl.hh"
#include "tac.hh"

RTL_Double_Const_Opd::RTL_Double_Const_Opd(double value) : value(value) {}

RTL_Int_Const_Opd::RTL_Int_Const_Opd(int value) : value(value) {}

RTL_Label_Opd::RTL_Label_Opd(int label_index) : label_index(label_index) {}

RTL_Register_Opd::RTL_Register_Opd(std::shared_ptr<Register> reg) : reg(reg) {}

RTL_Str_Const_Opd::RTL_Str_Const_Opd(std::string value) : value(value) {}

RTL_Var_Opd::RTL_Var_Opd(std::shared_ptr<SymTabEntry> entry) : entry(entry) {}

Compute_RTL_Stmt::Compute_RTL_Stmt(std::shared_ptr<RTL_Opd> lOpd,
                                   std::shared_ptr<RTL_Opd> rOpd,
                                   Binary_Opd_Type opd)
    : lOpd(lOpd), rOpd(rOpd), opd(opd) {}

Goto_RTL_Stmt::Goto_RTL_Stmt(std::shared_ptr<RTL_Label_Opd> label)
    : label(label) {}

If_Goto_RTL_Stmt::If_Goto_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                                   std::shared_ptr<RTL_Label_Opd> label)
    : reg(reg), label(label) {}

Label_RTL_Stmt::Label_RTL_Stmt(std::shared_ptr<RTL_Label_Opd> label)
    : label(label) {}

Move_RTL_Stmt::Move_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> lReg,
                             std::shared_ptr<RTL_Register_Opd> rReg)
    : lReg(lReg), rReg(rReg) {}

Read_RTL_Stmt::Read_RTL_Stmt(std::shared_ptr<RTL_Var_Opd> var) : var(var) {}

Write_RTL_Stmt::Write_RTL_Stmt(std::shared_ptr<RTL_Var_Opd> var) : var(var) {}

void RTL_Code::append(std::shared_ptr<RTL_Stmt> stmt) {
    rtlStmts.push_back(stmt);
}

void RTL_Code::append(std::shared_ptr<RTL_Code> code) {
    rtlStmts.insert(rtlStmts.end(), code->rtlStmts.begin(),
                    code->rtlStmts.end());
}

bool RTL_Code::is_empty() { return rtlStmts.size() == 0; }

void Binary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Float_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Int_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Str_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Label_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Temporary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void STemporary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Variable_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Assign_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Goto_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void If_Goto_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void IO_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Label_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}
