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

RTL_Int_Const_Opd::RTL_Int_Const_Opd(int value)
    : RTL_Opd(Opd_Type::INT), value(value) {}

RTL_Label_Opd::RTL_Label_Opd(int label_index)
    : RTL_Opd(Opd_Type::LABEL), label_index(label_index) {}

RTL_Register_Opd::RTL_Register_Opd(std::shared_ptr<Register> reg)
    : RTL_Opd(Opd_Type::TEMP), reg(reg) {}

std::shared_ptr<Register> RTL_Register_Opd::getReg() { return reg; }

RTL_Stemp_Opd::RTL_Stemp_Opd(int stemp_index, Type stemp_type)
    : RTL_Opd(Opd_Type::STEMP), stemp_index(stemp_index),
      stemp_type(stemp_type) {}

Type RTL_Stemp_Opd::getStempType() { return stemp_type; }

RTL_Str_Const_Opd::RTL_Str_Const_Opd(std::string value)
    : RTL_Opd(Opd_Type::STR), value(value) {}

RTL_Var_Opd::RTL_Var_Opd(std::shared_ptr<SymTabEntry> entry, Type var_type)
    : RTL_Opd(Opd_Type::VAR), entry(entry), var_type(var_type) {}

Type RTL_Var_Opd::getVarType() { return var_type; }

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
    : reg(reg), opd(opd), type(type) {}

Load_RTL_Stmt::Load_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                             std::shared_ptr<RTL_Opd> opd, Opd_Type type,
                             Type var_type)
    : reg(reg), opd(opd), type(type), var_type(var_type) {}

Store_RTL_Stmt::Store_RTL_Stmt(std::shared_ptr<RTL_Var_Opd> var,
                               std::shared_ptr<RTL_Register_Opd> reg,
                               Opd_Type type)
    : var(var), reg(reg), type(type) {}

Store_RTL_Stmt::Store_RTL_Stmt(std::shared_ptr<RTL_Var_Opd> var,
                               std::shared_ptr<RTL_Register_Opd> reg,
                               Opd_Type type, Type var_type)
    : var(var), reg(reg), type(type), var_type(var_type) {}

void RTL_Code::append(std::shared_ptr<RTL_Stmt> rtl) {
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
    rtl_code->append(lOpd->getRTLCode());
    std::shared_ptr<RTL_Opd> lPlace = lOpd->getRTLPlace();
    Opd_Type lType = lPlace->getType();
    std::shared_ptr<RTL_Register_Opd> lReg = nullptr;
    switch (lType) {
    case Opd_Type::INT:
    case Opd_Type::FLOAT: {
        if (lType == Opd_Type::FLOAT)
            lReg = reg_pool->getFloatRegister();
        else
            lReg = reg_pool->getRegister();
        std::shared_ptr<Load_RTL_Stmt> lLoad =
            std::make_shared<Load_RTL_Stmt>(lReg, lPlace, lType);
        rtl_code->append(lLoad);
        break;
    }
    case Opd_Type::VAR: {
        std::shared_ptr<RTL_Var_Opd> lVar =
            std::dynamic_pointer_cast<RTL_Var_Opd>(lPlace);
        Type lVarType = lVar->getVarType();
        if (lVarType == Type::FLOAT)
            lReg = reg_pool->getFloatRegister();
        else
            lReg = reg_pool->getRegister();
        std::shared_ptr<Load_RTL_Stmt> lLoad =
            std::make_shared<Load_RTL_Stmt>(lReg, lPlace, lType, lVarType);
        rtl_code->append(lLoad);
        break;
    }
    case Opd_Type::TEMP:
        lReg = std::dynamic_pointer_cast<RTL_Register_Opd>(lPlace);
    default:
        break;
    }
    temp->build_rtl(reg_pool);
    rtl_place = temp->getRTLPlace();
    rtl_code->append(temp->getRTLCode());
    std::shared_ptr<RTL_Register_Opd> reg =
        std::dynamic_pointer_cast<RTL_Register_Opd>(rtl_place);
    std::shared_ptr<RTL_Opd> rPlace = nullptr;
    Opd_Type rType;
    std::shared_ptr<RTL_Register_Opd> rReg = nullptr;
    if (rOpd) {
        rOpd->build_rtl(reg_pool);
        rtl_code->append(rOpd->getRTLCode());
        rPlace = rOpd->getRTLPlace();
        rType = rPlace->getType();
        switch (rType) {
        case Opd_Type::INT:
        case Opd_Type::FLOAT: {
            if (rType == Opd_Type::FLOAT)
                rReg = reg_pool->getFloatRegister();
            else
                rReg = reg_pool->getRegister();
            std::shared_ptr<Load_RTL_Stmt> rLoad =
                std::make_shared<Load_RTL_Stmt>(rReg, rPlace, rType);
            rtl_code->append(rLoad);
            break;
        }
        case Opd_Type::VAR: {
            std::shared_ptr<RTL_Var_Opd> rVar =
                std::dynamic_pointer_cast<RTL_Var_Opd>(rPlace);
            Type rVarType = rVar->getVarType();
            if (rVarType == Type::FLOAT)
                rReg = reg_pool->getFloatRegister();
            else
                rReg = reg_pool->getRegister();
            std::shared_ptr<Load_RTL_Stmt> rLoad =
                std::make_shared<Load_RTL_Stmt>(rReg, rPlace, rType, rVarType);
            rtl_code->append(rLoad);
            break;
        }
        case Opd_Type::TEMP:
            rReg = std::dynamic_pointer_cast<RTL_Register_Opd>(rPlace);
        default:
            break;
        }
    }
    std::shared_ptr<Compute_RTL_Stmt> compute_rtl_stmt =
        std::make_shared<Compute_RTL_Stmt>(reg, lReg, rReg, opd,
                                           temp->get_type());
    rtl_code->append(compute_rtl_stmt);
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
    if (std::shared_ptr<Variable_TAC_Opd> lVar =
            std::dynamic_pointer_cast<Variable_TAC_Opd>(lOpd)) {
        // lOpd = variable
        lVar->build_rtl(reg_pool);
        rtl_code->append(lVar->getRTLCode());
        expr->build_rtl(reg_pool);
        rtl_code->append(expr->getRTLCode());
        std::shared_ptr<RTL_Var_Opd> lVarRtl =
            std::dynamic_pointer_cast<RTL_Var_Opd>(lVar->getRTLPlace());
        std::shared_ptr<RTL_Opd> rPlace = expr->getRTLPlace();
        Opd_Type rType = rPlace->getType();
        switch (rType) {
        case Opd_Type::INT:
        case Opd_Type::FLOAT:
        case Opd_Type::STR: {
            std::shared_ptr<RTL_Register_Opd> rTemp;
            if (rType == Opd_Type::FLOAT)
                rTemp = reg_pool->getFloatRegister();
            else
                rTemp = reg_pool->getRegister();
            std::shared_ptr<Load_RTL_Stmt> rLoad =
                std::make_shared<Load_RTL_Stmt>(rTemp, rPlace, rType);
            std::shared_ptr<Store_RTL_Stmt> lStore =
                std::make_shared<Store_RTL_Stmt>(lVarRtl, rTemp, rType);
            rtl_code->append(rLoad, lStore);
            rTemp->getReg()->markFree();
            break;
        }
        case Opd_Type::TEMP: {
            std::shared_ptr<RTL_Register_Opd> rTemp =
                std::dynamic_pointer_cast<RTL_Register_Opd>(rPlace);
            std::shared_ptr<Store_RTL_Stmt> lStore =
                std::make_shared<Store_RTL_Stmt>(lVarRtl, rTemp, rType,
                                                 lVarRtl->getVarType());
            rtl_code->append(lStore);
            rTemp->getReg()->markFree();
            break;
        }
        case Opd_Type::VAR: {
            std::shared_ptr<RTL_Register_Opd> rTemp;
            std::shared_ptr<RTL_Var_Opd> rVar =
                std::dynamic_pointer_cast<RTL_Var_Opd>(rPlace);
            if (rVar->getVarType() == Type::FLOAT)
                rTemp = reg_pool->getFloatRegister();
            else
                rTemp = reg_pool->getRegister();
            std::shared_ptr<Load_RTL_Stmt> rLoad =
                std::make_shared<Load_RTL_Stmt>(rTemp, rPlace, rType,
                                                rVar->getVarType());
            std::shared_ptr<Store_RTL_Stmt> lStore =
                std::make_shared<Store_RTL_Stmt>(lVarRtl, rTemp, rType,
                                                 rVar->getVarType());
            rtl_code->append(rLoad, lStore);
            rTemp->getReg()->markFree();
            break;
        }
        case Opd_Type::STEMP: {
            std::shared_ptr<RTL_Register_Opd> rTemp;
            std::shared_ptr<RTL_Stemp_Opd> rVar =
                std::dynamic_pointer_cast<RTL_Stemp_Opd>(rPlace);
            if (rVar->getStempType() == Type::FLOAT)
                rTemp = reg_pool->getFloatRegister();
            else
                rTemp = reg_pool->getRegister();
            std::shared_ptr<Load_RTL_Stmt> rLoad =
                std::make_shared<Load_RTL_Stmt>(rTemp, rPlace, rType);
            std::shared_ptr<Store_RTL_Stmt> lStore =
                std::make_shared<Store_RTL_Stmt>(lVarRtl, rTemp, rType);
            rtl_code->append(rLoad, lStore);
            rTemp->getReg()->markFree();
            break;
        }
        default:
            break;
        }
    } else {
        // lOpd = temp
        expr->build_rtl(reg_pool);
        rtl_code->append(expr->getRTLCode());
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
        std::shared_ptr<RTL_Register_Opd> arg = reg_pool->getArgRegister();
        std::shared_ptr<Load_RTL_Stmt> load = std::make_shared<Load_RTL_Stmt>(
            arg, var->getRTLPlace(), var->getRTLPlace()->getType());
        std::shared_ptr<Write_RTL_Stmt> write =
            std::make_shared<Write_RTL_Stmt>();
        rtl_code->append(var->getRTLCode(), load, write);
        arg->getReg()->markFree();
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