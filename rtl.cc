#include "rtl.hh"
#include "ast.hh"
#include "tac.hh"

std::shared_ptr<RTL_Opd> TAC_Opd::getRTLPlace() { return rtl_place; }

std::shared_ptr<RTL_Code> TAC_Opd::getRTLCode() { return rtl_code; }

std::shared_ptr<RTL_Code> TAC_Stmt::getRTLCode() { return rtl_code; }

RTL_Opd::RTL_Opd(Opd_Type type) : type(type) {}

Opd_Type RTL_Opd::getType() { return type; }

RTL_Double_Const_Opd::RTL_Double_Const_Opd(double value)
    : RTL_Opd(Opd_Type::FLOAT), value(value) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Double_Const_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getFloatRegister();
    std::shared_ptr<Load_RTL_Stmt> load =
        std::make_shared<Load_RTL_Stmt>(reg, shared_from_this(), getType());
    return std::make_pair(reg, load);
}

RTL_Int_Const_Opd::RTL_Int_Const_Opd(int value)
    : RTL_Opd(Opd_Type::INT), value(value) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Int_Const_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    std::shared_ptr<Load_RTL_Stmt> load =
        std::make_shared<Load_RTL_Stmt>(reg, shared_from_this(), getType());
    return std::make_pair(reg, load);
}

RTL_Label_Opd::RTL_Label_Opd(int label_index)
    : RTL_Opd(Opd_Type::LABEL), label_index(label_index) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Label_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    return std::make_pair(nullptr, nullptr);
}

RTL_Register_Opd::RTL_Register_Opd(std::shared_ptr<Register> reg, Type var_type)
    : RTL_Opd(Opd_Type::TEMP), reg(reg), var_type(var_type) {}

Type RTL_Register_Opd::getVarType() { return var_type; }

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Register_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    return std::make_pair(shared_from_this(), nullptr);
}

std::shared_ptr<Register> RTL_Register_Opd::getReg() { return reg; }

RTL_Stemp_Opd::RTL_Stemp_Opd(int stemp_index, Type stemp_type)
    : RTL_Var_Opd(nullptr, stemp_type), stemp_index(stemp_index) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Stemp_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg;
    if (getVarType() == Type::FLOAT)
        reg = reg_pool->getFloatRegister();
    else
        reg = reg_pool->getRegister();
    std::shared_ptr<Load_RTL_Stmt> load = std::make_shared<Load_RTL_Stmt>(
        reg, shared_from_this(), getType(), getVarType());
    return std::make_pair(reg, load);
}

RTL_Zero_Opd::RTL_Zero_Opd() : RTL_Opd(Opd_Type::ZERO) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Zero_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    std::shared_ptr<Load_RTL_Stmt> load = std::make_shared<Load_RTL_Stmt>(
        reg, shared_from_this(), getType(), Type::INT);
    return std::make_pair(reg, load);
}

RTL_Str_Const_Opd::RTL_Str_Const_Opd(std::string value)
    : RTL_Opd(Opd_Type::STR), value(value) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Str_Const_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    std::shared_ptr<Load_RTL_Stmt> load =
        std::make_shared<Load_RTL_Stmt>(reg, shared_from_this(), getType());
    return std::make_pair(reg, load);
}

RTL_Var_Opd::RTL_Var_Opd(std::shared_ptr<SymTabEntry> entry, Type var_type)
    : RTL_Opd(Opd_Type::VAR), entry(entry), var_type(var_type) {}

Type RTL_Var_Opd::getVarType() { return var_type; }

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
RTL_Var_Opd::getLoadedReg(std::shared_ptr<RegisterPool> reg_pool) {
    std::shared_ptr<RTL_Register_Opd> reg;
    if (getVarType() == Type::FLOAT)
        reg = reg_pool->getFloatRegister();
    else
        reg = reg_pool->getRegister();
    std::shared_ptr<Load_RTL_Stmt> load = std::make_shared<Load_RTL_Stmt>(
        reg, shared_from_this(), getType(), getVarType());
    return std::make_pair(reg, load);
}

Compute_RTL_Stmt::Compute_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                                   std::shared_ptr<RTL_Opd> lOpd,
                                   std::shared_ptr<RTL_Opd> rOpd,
                                   Binary_Opd_Type opd, Type type)
    : reg(reg), lOpd(lOpd), rOpd(rOpd), opd(opd), type(type) {}

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

Write_RTL_Stmt::Write_RTL_Stmt() {}

Load_RTL_Stmt::Load_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                             std::shared_ptr<RTL_Opd> opd, Opd_Type type)
    : reg(reg), opd(opd), type(type), var_type(Type::INT), movf(false),
      movt(false) {}

Load_RTL_Stmt::Load_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                             std::shared_ptr<RTL_Opd> opd, Opd_Type type,
                             Type var_type)
    : reg(reg), opd(opd), type(type), var_type(var_type), movf(false),
      movt(false) {}

void Load_RTL_Stmt::setMovf() {
    movf = true;
    movt = false;
}

void Load_RTL_Stmt::setMovt() {
    movf = false;
    movt = true;
}

Store_RTL_Stmt::Store_RTL_Stmt(std::shared_ptr<RTL_Opd> var,
                               std::shared_ptr<RTL_Register_Opd> reg,
                               Opd_Type type)
    : var(var), reg(reg), type(type) {}

Store_RTL_Stmt::Store_RTL_Stmt(std::shared_ptr<RTL_Opd> var,
                               std::shared_ptr<RTL_Register_Opd> reg,
                               Opd_Type type, Type var_type)
    : var(var), reg(reg), type(type), var_type(var_type) {}

void RTL_Code::append(std::shared_ptr<RTL_Stmt> rtl) {
    if (rtl)
        rtlStmts.push_back(rtl);
}

void RTL_Code::append(std::shared_ptr<RTL_Code> code) {
    rtlStmts.insert(rtlStmts.end(), code->rtlStmts.begin(),
                    code->rtlStmts.end());
}

bool RTL_Code::is_empty() { return rtlStmts.size() == 0; }

std::shared_ptr<RTL_Stmt> RTL_Code::getFirst() { return rtlStmts.at(0); }

void Binary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    lOpd->build_rtl(reg_pool);
    auto [lReg, lLoad] = lOpd->getRTLPlace()->getLoadedReg(reg_pool);
    rtl_code->append(lOpd->getRTLCode(), lLoad);
    Type type = lReg->getVarType();
    Type tempType = temp->get_type();
    bool simpleCase = !(tempType == Type::BOOL && type == Type::FLOAT);
    std::shared_ptr<RTL_Register_Opd> oneReg;
    if (!simpleCase)
        oneReg = reg_pool->getRegister();

    temp->build_rtl(reg_pool);
    std::shared_ptr<RTL_Register_Opd> reg =
        std::dynamic_pointer_cast<RTL_Register_Opd>(temp->getRTLPlace());
    rtl_place = reg;
    rtl_code->append(temp->getRTLCode());
    std::shared_ptr<RTL_Register_Opd> rReg;
    if (rOpd) {
        rOpd->build_rtl(reg_pool);
        auto rRegLoad = rOpd->getRTLPlace()->getLoadedReg(reg_pool);
        rReg = rRegLoad.first;
        auto rLoad = rRegLoad.second;
        rtl_code->append(rOpd->getRTLCode(), rLoad);
    }
    std::shared_ptr<Compute_RTL_Stmt> compute_rtl_stmt;

    bool movf = true;
    if (type == Type::FLOAT) {
        if (opd == Binary_Opd_Type::GT) {
            compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
                nullptr, lReg, rReg, Binary_Opd_Type::LE, type);
            movf = true;
        } else if (opd == Binary_Opd_Type::GE) {
            compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
                nullptr, lReg, rReg, Binary_Opd_Type::LT, type);
            movf = true;
        } else if (opd == Binary_Opd_Type::NE) {
            compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
                nullptr, lReg, rReg, Binary_Opd_Type::EQ, type);
            movf = true;
        } else if (opd == Binary_Opd_Type::LE) {
            compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
                nullptr, lReg, rReg, opd, type);
            movf = false;
        } else if (opd == Binary_Opd_Type::LT) {
            compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
                nullptr, lReg, rReg, opd, type);
            movf = false;
        } else if (opd == Binary_Opd_Type::EQ) {
            compute_rtl_stmt = std::make_shared<Compute_RTL_Stmt>(
                nullptr, lReg, rReg, opd, type);
            movf = false;
        } else
            compute_rtl_stmt =
                std::make_shared<Compute_RTL_Stmt>(reg, lReg, rReg, opd, type);
    } else
        compute_rtl_stmt =
            std::make_shared<Compute_RTL_Stmt>(reg, lReg, rReg, opd, type);

    rtl_code->append(compute_rtl_stmt);
    if (!simpleCase) {
        std::shared_ptr<RTL_Int_Const_Opd> oneInt =
            std::make_shared<RTL_Int_Const_Opd>(1);
        std::shared_ptr<Load_RTL_Stmt> oneLoad =
            std::make_shared<Load_RTL_Stmt>(oneReg, oneInt, Opd_Type::INT);

        std::shared_ptr<RTL_Zero_Opd> zeroOpd =
            std::make_shared<RTL_Zero_Opd>();
        std::shared_ptr<Load_RTL_Stmt> moveZero =
            std::make_shared<Load_RTL_Stmt>(reg, zeroOpd, Opd_Type::ZERO);

        std::shared_ptr<Load_RTL_Stmt> condMove =
            std::make_shared<Load_RTL_Stmt>(reg, oneReg, Opd_Type::INT);
        if (movf)
            condMove->setMovf();
        else
            condMove->setMovt();

        oneReg->getReg()->markFree();
        rtl_code->append(oneLoad, moveZero, condMove);
    }
    if (lReg)
        lReg->getReg()->markFree();
    if (rReg)
        rReg->getReg()->markFree();
}

void Float_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Double_Const_Opd>(value);
}

void Int_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Int_Const_Opd>(value);
}

void Str_Const_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Str_Const_Opd>(value);
}

void Label_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Label_Opd>(label_index);
}

void Temporary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    if (rtl_place)
        return;
    rtl_code = std::make_shared<RTL_Code>();
    std::shared_ptr<RTL_Register_Opd> reg;
    if (type == Type::FLOAT)
        reg = reg_pool->getFloatRegister();
    else
        reg = reg_pool->getRegister();
    reg->getReg()->setTemp(shared_from_this());
    rtl_place = reg;
}

void STemporary_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Stemp_Opd>(temp_num, get_type());
}

void Variable_TAC_Opd::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Var_Opd>(entry, get_type());
}

void Assign_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    expr->build_rtl(reg_pool);
    rtl_code->append(expr->getRTLCode());
    lOpd->build_rtl(reg_pool);
    rtl_code->append(lOpd->getRTLCode());
    std::shared_ptr<RTL_Opd> lPlace = lOpd->getRTLPlace();
    Opd_Type lType = lPlace->getType();
    std::shared_ptr<RTL_Opd> rPlace = expr->getRTLPlace();
    if (lType == Opd_Type::VAR) {
        std::shared_ptr<RTL_Var_Opd> lVar =
            std::dynamic_pointer_cast<RTL_Var_Opd>(lPlace);
        auto [rReg, rLoad] = rPlace->getLoadedReg(reg_pool);
        rtl_code->append(rLoad);
        if (rReg)
            rReg->getReg()->markFree();
        std::shared_ptr<Store_RTL_Stmt> lStore =
            std::make_shared<Store_RTL_Stmt>(lVar, rReg, lType,
                                             lVar->getVarType());
        rtl_code->append(lStore);
    }
}

void Goto_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    label->build_rtl(reg_pool);
    std::shared_ptr<RTL_Label_Opd> labelRtl =
        std::dynamic_pointer_cast<RTL_Label_Opd>(label->getRTLPlace());
    std::shared_ptr<Goto_RTL_Stmt> gotoStmt =
        std::make_shared<Goto_RTL_Stmt>(labelRtl);
    rtl_code->append(label->getRTLCode(), gotoStmt);
}

void If_Goto_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    cond->build_rtl(reg_pool);
    label->build_rtl(reg_pool);
    std::shared_ptr<RTL_Label_Opd> labelRtl =
        std::dynamic_pointer_cast<RTL_Label_Opd>(label->getRTLPlace());
    std::shared_ptr<RTL_Register_Opd> reg =
        std::dynamic_pointer_cast<RTL_Register_Opd>(cond->getRTLPlace());
    std::shared_ptr<If_Goto_RTL_Stmt> bgtz =
        std::make_shared<If_Goto_RTL_Stmt>(reg, labelRtl);
    rtl_code->append(cond->getRTLCode(), label->getRTLCode(), bgtz);
    reg->getReg()->markFree();
}

void IO_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    var->build_rtl(reg_pool);
    if (opd == IO_Opd::READ) {
    } else {
        Type type = Type::INT;
        std::shared_ptr<RTL_Opd> varPlace = var->getRTLPlace();
        Opd_Type varType = varPlace->getType();
        if (varType == Opd_Type::VAR) {
            std::shared_ptr<RTL_Var_Opd> varRtl =
                std::dynamic_pointer_cast<RTL_Var_Opd>(varPlace);
            type = varRtl->getVarType();
        } else if (varType == Opd_Type::TEMP) {
            std::shared_ptr<RTL_Register_Opd> varRtl =
                std::dynamic_pointer_cast<RTL_Register_Opd>(varPlace);
            type = varRtl->getVarType();
        } else if (varType == Opd_Type::FLOAT)
            type = Type::FLOAT;

        std::shared_ptr<Load_RTL_Stmt> syscallLoad;
        std::shared_ptr<Load_RTL_Stmt> argLoad;
        std::shared_ptr<RTL_Register_Opd> argReg;
        std::shared_ptr<RTL_Register_Opd> v0 = reg_pool->getV0();
        if (type == Type::FLOAT) {
            std::shared_ptr<RTL_Int_Const_Opd> syscallInt =
                std::make_shared<RTL_Int_Const_Opd>(3);
            syscallLoad =
                std::make_shared<Load_RTL_Stmt>(v0, syscallInt, Opd_Type::INT);
            argReg = reg_pool->getFloatArgRegister();
            argLoad = std::make_shared<Load_RTL_Stmt>(
                argReg, varPlace, varPlace->getType(), type);
        } else {
            std::shared_ptr<RTL_Int_Const_Opd> syscallInt =
                std::make_shared<RTL_Int_Const_Opd>(1);
            syscallLoad =
                std::make_shared<Load_RTL_Stmt>(v0, syscallInt, Opd_Type::INT);
            argReg = reg_pool->getArgRegister();
            argLoad = std::make_shared<Load_RTL_Stmt>(
                argReg, varPlace, varPlace->getType(), type);
        }

        std::shared_ptr<Write_RTL_Stmt> write =
            std::make_shared<Write_RTL_Stmt>();
        rtl_code->append(var->getRTLCode(), syscallLoad, argLoad, write);
        v0->getReg()->markFree();
        argReg->getReg()->markFree();
    }
}

void Label_TAC_Stmt::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    rtl_code = std::make_shared<RTL_Code>();
    label->build_rtl(reg_pool);
    std::shared_ptr<RTL_Label_Opd> labelRtl =
        std::dynamic_pointer_cast<RTL_Label_Opd>(label->getRTLPlace());
    std::shared_ptr<Label_RTL_Stmt> labelStmt =
        std::make_shared<Label_RTL_Stmt>(labelRtl);
    rtl_code->append(label->getRTLCode(), labelStmt);
}

void TAC_Code::build_rtl(std::shared_ptr<RegisterPool> reg_pool) {
    for (auto tacStmt : tacStmts)
        tacStmt->build_rtl(reg_pool);
}

void Func_Ast::build_rtl() {
    seq_ast->get_code()->build_rtl(proc_table->getRegisterPool());
}

void Root_Ast::build_rtl() {
    for (const std::shared_ptr<Func_Ast> &func : funcs)
        func->build_rtl();
}