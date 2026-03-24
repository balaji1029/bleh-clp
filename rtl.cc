#include "rtl.hh"
#include "ast.hh"
#include "tac.hh"

std::shared_ptr<RTL_Opd> TAC_Opd::getRTLPlace() { return rtl_place; }

std::shared_ptr<RTL_Code> TAC_Opd::getRTLCode() { return rtl_code; }

std::shared_ptr<RTL_Code> TAC_Stmt::getRTLCode() { return rtl_code; }

RTL_Double_Const_Opd::RTL_Double_Const_Opd(double value) : value(value) {}

RTL_Int_Const_Opd::RTL_Int_Const_Opd(int value) : value(value) {}

RTL_Label_Opd::RTL_Label_Opd(int label_index) : label_index(label_index) {}

RTL_Register_Opd::RTL_Register_Opd(std::shared_ptr<Register> reg) : reg(reg) {}

std::shared_ptr<Register> RTL_Register_Opd::getReg() { return reg; }

RTL_Stemp_Opd::RTL_Stemp_Opd(int stemp_index) : stemp_index(stemp_index) {}

RTL_Str_Const_Opd::RTL_Str_Const_Opd(std::string value) : value(value) {}

RTL_Var_Opd::RTL_Var_Opd(std::shared_ptr<SymTabEntry> entry) : entry(entry) {}

Compute_RTL_Stmt::Compute_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                                   std::shared_ptr<RTL_Opd> lOpd,
                                   std::shared_ptr<RTL_Opd> rOpd,
                                   Binary_Opd_Type opd)
    : reg(reg), lOpd(lOpd), rOpd(rOpd), opd(opd) {}

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

Load_RTL_Stmt::Load_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                             std::shared_ptr<RTL_Opd> opd,
                             Loadable_Opd_Type type)
    : reg(reg), opd(opd), type(type) {}

Write_RTL_Stmt::Write_RTL_Stmt(std::shared_ptr<RTL_Var_Opd> var) : var(var) {}

void RTL_Code::append(std::shared_ptr<RTL_Stmt> rtl) {
    rtlStmts.push_back(rtl);
}

void RTL_Code::append(std::shared_ptr<RTL_Code> code) {
    rtlStmts.insert(rtlStmts.end(), code->rtlStmts.begin(),
                    code->rtlStmts.end());
}

bool RTL_Code::is_empty() { return rtlStmts.size() == 0; }

void Binary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    lOpd->build_rtl(reg_pool);
    if (rOpd)
        rOpd->build_rtl(reg_pool);
    if (std::shared_ptr<Temporary_TAC_Opd> lTemp =
            std::dynamic_pointer_cast<Temporary_TAC_Opd>(lOpd))
        reg_pool->markTempFree(lTemp);
    if (rOpd)
        if (std::shared_ptr<Temporary_TAC_Opd> rTemp =
                std::dynamic_pointer_cast<Temporary_TAC_Opd>(rOpd))
            reg_pool->markTempFree(rTemp);
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getTempRegister(temp);
    rtl_place = reg;
    std::shared_ptr<Compute_RTL_Stmt> compute_rtl_stmt;
    if (rOpd)
        compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
            reg, lOpd->getRTLPlace(), rOpd->getRTLPlace(), opd);
    else
        compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
            reg, lOpd->getRTLPlace(), nullptr, opd);
    rtl_code->append(compute_rtl_stmt);
}

void Float_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    rtl_place = reg;
    rtl_code = std::make_shared<RTL_Code>();
    auto double_rtl = std::make_shared<RTL_Double_Const_Opd>(value);
    auto load_stmt = std::make_shared<Load_RTL_Stmt>(reg, double_rtl,
                                                     Loadable_Opd_Type::DOUBLE);
    rtl_code->append(load_stmt);
}

void Int_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    rtl_place = reg;
    rtl_code = std::make_shared<RTL_Code>();
    auto int_rtl = std::make_shared<RTL_Int_Const_Opd>(value);
    auto load_stmt =
        std::make_shared<Load_RTL_Stmt>(reg, int_rtl, Loadable_Opd_Type::INT);
    rtl_code->append(load_stmt);
}

void Str_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    rtl_place = reg;
    rtl_code = std::make_shared<RTL_Code>();
    auto str_rtl = std::make_shared<RTL_Str_Const_Opd>(value);
    auto load_stmt =
        std::make_shared<Load_RTL_Stmt>(reg, str_rtl, Loadable_Opd_Type::STR);
    rtl_code->append(load_stmt);
}

void Label_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_place = std::make_shared<RTL_Label_Opd>(label_index);
}

void Temporary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    reg->getReg()->setTemp(shared_from_this());
    Printable_Opd::rtl_place = reg;
}

void STemporary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    Printable_Opd::rtl_place = std::make_shared<RTL_Stemp_Opd>(temp_num);
}

void Variable_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Assign_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Goto_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void If_Goto_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void IO_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}

void Label_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {}
