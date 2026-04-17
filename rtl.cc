#include "rtl.hh"
#include "ast.hh"
#include "backward_flow.hh"
#include "tac.hh"

std::shared_ptr<RTL_Opd> TAC_Opd::getRTLPlace() { return rtl_place; }

std::shared_ptr<RTL_Code> TAC_Opd::getRTLCode() { return rtl_code; }

std::shared_ptr<RTL_Code> TAC_Stmt::getRTLCode() { return rtl_code; }

RTL_Opd::RTL_Opd(Opd_Type type) : type(type) {}

Opd_Type RTL_Opd::getType() { return type; }

RTL_Double_Const_Opd::RTL_Double_Const_Opd(double value)
    : RTL_Opd(Opd_Type::FLOAT), value(value) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Double_Const_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getFloatRegister();
    std::shared_ptr<Move_RTL_Stmt> load =
        std::make_shared<Move_RTL_Stmt>(reg, shared_from_this(), getType());
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    code->append(load);
    return std::make_pair(reg, code);
}

RTL_Int_Const_Opd::RTL_Int_Const_Opd(int value)
    : RTL_Opd(Opd_Type::INT), value(value) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Int_Const_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    std::shared_ptr<Move_RTL_Stmt> load =
        std::make_shared<Move_RTL_Stmt>(reg, shared_from_this(), getType());
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    code->append(load);
    return std::make_pair(reg, code);
}

RTL_Label_Opd::RTL_Label_Opd(int label_index)
    : RTL_Opd(Opd_Type::LABEL), label_index(label_index) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Label_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    return std::make_pair(nullptr, nullptr);
}

RTL_Register_Opd::RTL_Register_Opd(std::shared_ptr<Register> reg, Type var_type)
    : RTL_Opd(Opd_Type::TEMP), reg(reg), var_type(var_type) {}

Type RTL_Register_Opd::getVarType() { return var_type; }

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Register_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    return std::make_pair(shared_from_this(), nullptr);
}

std::shared_ptr<Register> RTL_Register_Opd::getReg() { return reg; }

RTL_Zero_Opd::RTL_Zero_Opd() : RTL_Opd(Opd_Type::ZERO) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Zero_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    std::shared_ptr<Move_RTL_Stmt> load = std::make_shared<Move_RTL_Stmt>(
        reg, shared_from_this(), getType(), Type::INT);
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    code->append(load);
    return std::make_pair(reg, code);
}

RTL_Function_Call_Opd::RTL_Function_Call_Opd(
    std::shared_ptr<FuncEntry> entry,
    std::vector<std::shared_ptr<RTL_Opd>> args)
    : RTL_Opd(Opd_Type::FUNC), entry(entry), args(args) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Function_Call_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    reg = nullptr;
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    std::vector<std::shared_ptr<RTL_Opd>> reverseArgs(args.rbegin(),
                                                      args.rend());
    for (auto arg : reverseArgs) {
        auto [argReg, argCode] = arg->getLoadedReg(symtab);
        std::shared_ptr<Stack_RTL_Stmt> pushReg =
            std::make_shared<Stack_RTL_Stmt>(argReg, argReg->getVarType());
        code->append(argCode, pushReg);
        argReg->getReg()->markFree();
    }
    Type retType = entry->get_return_type();
    if (retType != Type::VOID) {
        if (retType == Type::FLOAT)
            reg = reg_pool->getF0();
        else
            reg = reg_pool->getV1();
    }
    return std::make_pair(reg, code);
}

std::shared_ptr<FuncEntry> RTL_Function_Call_Opd::getEntry() { return entry; }

std::shared_ptr<RTL_Register_Opd> RTL_Function_Call_Opd::getReg() {
    return reg;
}

std::shared_ptr<RTL_Code> RTL_Function_Call_Opd::unloadArgs() {
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    for (auto arg : args) {
        Type argType = Type::INT;
        switch (arg->getType()) {
        case Opd_Type::VAR: {
            std::shared_ptr<RTL_Var_Opd> argVar =
                std::dynamic_pointer_cast<RTL_Var_Opd>(arg);
            argType = argVar->getVarType();
            break;
        }
        case Opd_Type::TEMP: {
            std::shared_ptr<RTL_Register_Opd> argReg =
                std::dynamic_pointer_cast<RTL_Register_Opd>(arg);
            argType = argReg->getVarType();
            break;
        }
        case Opd_Type::FLOAT: {
            argType = Type::FLOAT;
            break;
        }
        default:
            break;
        };
        std::shared_ptr<Stack_RTL_Stmt> argPop =
            std::make_shared<Stack_RTL_Stmt>(argType);
        code->append(argPop);
    }
    return code;
}

RTL_Str_Const_Opd::RTL_Str_Const_Opd(std::string str,
                                     std::shared_ptr<ProcSymbolTable> symtab)
    : RTL_Opd(Opd_Type::STR), str(str), id(symtab->addString(str)) {}

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Str_Const_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    std::shared_ptr<RTL_Register_Opd> reg = reg_pool->getRegister();
    std::shared_ptr<Move_RTL_Stmt> load =
        std::make_shared<Move_RTL_Stmt>(reg, shared_from_this(), getType());
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    code->append(load);
    return std::make_pair(reg, code);
}

std::string RTL_Str_Const_Opd::getStr() const { return str; }

int RTL_Str_Const_Opd::getId() const { return id; }

RTL_Var_Opd::RTL_Var_Opd(std::shared_ptr<SymTabEntry> entry, Type var_type)
    : RTL_Opd(Opd_Type::VAR), entry(entry), var_type(var_type) {}

Type RTL_Var_Opd::getVarType() { return var_type; }

std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Code>>
RTL_Var_Opd::getLoadedReg(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    std::shared_ptr<RTL_Register_Opd> reg;
    if (getVarType() == Type::FLOAT)
        reg = reg_pool->getFloatRegister();
    else
        reg = reg_pool->getRegister();
    std::shared_ptr<Move_RTL_Stmt> load = std::make_shared<Move_RTL_Stmt>(
        reg, shared_from_this(), getType(), getVarType());
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    code->append(load);
    return std::make_pair(reg, code);
}

Compute_RTL_Stmt::Compute_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                                   std::shared_ptr<RTL_Register_Opd> lOpd,
                                   std::shared_ptr<RTL_Register_Opd> rOpd,
                                   Binary_Opd_Type opd, Type type)
    : reg(reg), lOpd(lOpd), rOpd(rOpd), opd(opd), type(type) {}

Goto_RTL_Stmt::Goto_RTL_Stmt(std::shared_ptr<RTL_Label_Opd> label)
    : label(label) {}

If_Goto_RTL_Stmt::If_Goto_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                                   std::shared_ptr<RTL_Label_Opd> label)
    : reg(reg), label(label) {}

Label_RTL_Stmt::Label_RTL_Stmt(std::shared_ptr<RTL_Label_Opd> label)
    : label(label) {}

Return_RTL_Stmt::Return_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg)
    : reg(reg) {}

Read_RTL_Stmt::Read_RTL_Stmt() {}

Write_RTL_Stmt::Write_RTL_Stmt() {}

Move_RTL_Stmt::Move_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                             std::shared_ptr<RTL_Opd> opd, Opd_Type type)
    : reg(reg), opd(opd), type(type), var_type(Type::INT), movf(false),
      movt(false) {}

Move_RTL_Stmt::Move_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                             std::shared_ptr<RTL_Opd> opd, Opd_Type type,
                             Type var_type)
    : reg(reg), opd(opd), type(type), var_type(var_type), movf(false),
      movt(false) {}

void Move_RTL_Stmt::setMovf() {
    movf = true;
    movt = false;
}

void Move_RTL_Stmt::setMovt() {
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

Function_Call_RTL_Stmt::Function_Call_RTL_Stmt(
    std::shared_ptr<RTL_Function_Call_Opd> func)
    : func(func) {}

Stack_RTL_Stmt::Stack_RTL_Stmt(Type var_type)
    : reg(nullptr), var_type(var_type) {}

Stack_RTL_Stmt::Stack_RTL_Stmt(std::shared_ptr<RTL_Register_Opd> reg,
                               Type var_type)
    : reg(reg), var_type(var_type) {}

void RTL_Code::append(std::shared_ptr<RTL_Stmt> rtl) {
    if (rtl)
        rtlStmts.push_back(rtl);
}

void RTL_Code::append(std::shared_ptr<RTL_Code> code) {
    if (code)
        rtlStmts.insert(rtlStmts.end(), code->rtlStmts.begin(),
                        code->rtlStmts.end());
}

bool RTL_Code::is_empty() { return rtlStmts.size() == 0; }

std::shared_ptr<RTL_Stmt> RTL_Code::getFirst() { return rtlStmts.at(0); }

std::shared_ptr<RTL_Code>
Binary_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    lOpd->build_rtl(symtab);
    auto [lReg, lLoad] = lOpd->getRTLPlace()->getLoadedReg(symtab);
    rtl_code->append(lOpd->getRTLCode(), lLoad);
    Type type = lReg->getVarType();
    Type tempType = temp->get_type();
    bool simpleCase = !(tempType == Type::BOOL && type == Type::FLOAT);
    std::shared_ptr<RTL_Register_Opd> oneReg;
    if (!simpleCase)
        oneReg = reg_pool->getRegister();

    temp->build_rtl(symtab);
    std::shared_ptr<RTL_Register_Opd> reg =
        std::dynamic_pointer_cast<RTL_Register_Opd>(temp->getRTLPlace());
    rtl_place = reg;
    rtl_code->append(temp->getRTLCode());
    std::shared_ptr<RTL_Register_Opd> rReg;
    if (rOpd) {
        rOpd->build_rtl(symtab);
        auto rRegLoad = rOpd->getRTLPlace()->getLoadedReg(symtab);
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
        std::shared_ptr<Move_RTL_Stmt> oneLoad =
            std::make_shared<Move_RTL_Stmt>(oneReg, oneInt, Opd_Type::INT);

        std::shared_ptr<RTL_Zero_Opd> zeroOpd =
            std::make_shared<RTL_Zero_Opd>();
        std::shared_ptr<Move_RTL_Stmt> moveZero =
            std::make_shared<Move_RTL_Stmt>(reg, zeroOpd, Opd_Type::ZERO);

        std::shared_ptr<Move_RTL_Stmt> condMove =
            std::make_shared<Move_RTL_Stmt>(reg, oneReg, Opd_Type::INT);
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
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Float_Const_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Double_Const_Opd>(value);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Int_Const_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Int_Const_Opd>(value);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Str_Const_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Str_Const_Opd>(value, symtab);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Label_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Label_Opd>(label_index);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Temporary_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    if (rtl_place)
        return rtl_code;
    std::shared_ptr<RTL_Register_Opd> reg;
    if (type == Type::FLOAT)
        reg = reg_pool->getFloatRegister();
    else
        reg = reg_pool->getRegister();
    reg->getReg()->setTemp(shared_from_this());
    rtl_place = reg;
    return rtl_code;
}

// std::shared_ptr<RTL_Code>
// STemporary_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
//     rtl_code = std::make_shared<RTL_Code>();
//     rtl_place = std::make_shared<RTL_Var_Opd>(this->entry,
//     this->entry->get_type());
// }

std::shared_ptr<RTL_Code>
Variable_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    rtl_place = std::make_shared<RTL_Var_Opd>(entry, get_type());
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Function_Call_TAC_Opd::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    std::vector<std::shared_ptr<RTL_Opd>> rtlArgs{};
    for (auto arg : args) {
        arg->build_rtl(symtab);
        rtl_code->append(arg->getRTLCode());
        rtlArgs.push_back(arg->getRTLPlace());
    }
    rtl_place = std::make_shared<RTL_Function_Call_Opd>(entry, rtlArgs);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Function_Call_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    opd->build_rtl(symtab);
    std::shared_ptr<RTL_Function_Call_Opd> funcOpd =
        std::dynamic_pointer_cast<RTL_Function_Call_Opd>(opd->getRTLPlace());
    auto [funcReg, argCode] = funcOpd->getLoadedReg(symtab);
    std::shared_ptr<Function_Call_RTL_Stmt> funcStmt =
        std::make_shared<Function_Call_RTL_Stmt>(funcOpd);
    std::shared_ptr<RTL_Code> argPopCode = funcOpd->unloadArgs();
    rtl_code->append(opd->getRTLCode(), argCode, funcStmt, argPopCode);
    if (funcReg)
        funcReg->getReg()->markFree();
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Return_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    opd->build_rtl(symtab);
    std::shared_ptr<RTL_Opd> opdPlace = opd->getRTLPlace();
    std::shared_ptr<RTL_Register_Opd> reg;
    if (opd->get_type() == Type::FLOAT)
        reg = reg_pool->getF0();
    else
        reg = reg_pool->getV1();
    std::shared_ptr<Move_RTL_Stmt> retLoad = std::make_shared<Move_RTL_Stmt>(
        reg, opdPlace, opdPlace->getType(), opd->get_type());
    std::shared_ptr<Return_RTL_Stmt> returnStmt =
        std::make_shared<Return_RTL_Stmt>(reg);
    rtl_code->append(retLoad, returnStmt);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Assign_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    expr->build_rtl(symtab);
    auto [rReg, rCode] = expr->getRTLPlace()->getLoadedReg(symtab);
    rtl_code->append(expr->getRTLCode(), rCode);
    lOpd->build_rtl(symtab);
    rtl_code->append(lOpd->getRTLCode());
    std::shared_ptr<RTL_Opd> lPlace = lOpd->getRTLPlace();
    Opd_Type lType = lPlace->getType();
    std::shared_ptr<RTL_Opd> rPlace = expr->getRTLPlace();
    Opd_Type rType = rPlace->getType();
    if (lType == Opd_Type::VAR) {
        std::shared_ptr<RTL_Var_Opd> lVar =
            std::dynamic_pointer_cast<RTL_Var_Opd>(lPlace);
        std::shared_ptr<Store_RTL_Stmt> lStore =
            std::make_shared<Store_RTL_Stmt>(lVar, rReg, lType,
                                             lVar->getVarType());
        rtl_code->append(lStore);
        rReg->getReg()->markFree();
    } else if (rType == Opd_Type::FUNC) {
        std::shared_ptr<RTL_Register_Opd> lReg =
            std::dynamic_pointer_cast<RTL_Register_Opd>(lPlace);
        std::shared_ptr<RTL_Function_Call_Opd> func =
            std::dynamic_pointer_cast<RTL_Function_Call_Opd>(rPlace);
        std::shared_ptr<Function_Call_RTL_Stmt> funcStmt =
            std::make_shared<Function_Call_RTL_Stmt>(func);
        rtl_code->append(funcStmt);
        auto argPopCode = func->unloadArgs();
        rtl_code->append(argPopCode);
        std::shared_ptr<Move_RTL_Stmt> lLoad = std::make_shared<Move_RTL_Stmt>(
            lReg, rReg, lReg->getType(), lReg->getVarType());
        rReg->getReg()->markFree();
        rtl_code->append(lLoad);
    }
    std::shared_ptr<Temporary_TAC_Opd> lTemp =
        std::dynamic_pointer_cast<Temporary_TAC_Opd>(lOpd);
    if (lTemp && BackwardFlowAnalysis::inout.at(shared_from_this())
                         ->out.count(lTemp->get_ptr()) == 0) {
        std::shared_ptr<RTL_Register_Opd> lReg =
            std::dynamic_pointer_cast<RTL_Register_Opd>(lTemp->getRTLPlace());
        lReg->getReg()->markFree();
    }
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Goto_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    label->build_rtl(symtab);
    std::shared_ptr<RTL_Label_Opd> labelRtl =
        std::dynamic_pointer_cast<RTL_Label_Opd>(label->getRTLPlace());
    std::shared_ptr<Goto_RTL_Stmt> gotoStmt =
        std::make_shared<Goto_RTL_Stmt>(labelRtl);
    rtl_code->append(label->getRTLCode(), gotoStmt);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
If_Goto_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    cond->build_rtl(symtab);
    label->build_rtl(symtab);
    std::shared_ptr<RTL_Label_Opd> labelRtl =
        std::dynamic_pointer_cast<RTL_Label_Opd>(label->getRTLPlace());
    auto [reg, load] = cond->getRTLPlace()->getLoadedReg(symtab);
    std::shared_ptr<If_Goto_RTL_Stmt> bgtz =
        std::make_shared<If_Goto_RTL_Stmt>(reg, labelRtl);
    rtl_code->append(cond->getRTLCode(), label->getRTLCode(), load, bgtz);
    reg->getReg()->markFree();
    return rtl_code;
}

std::shared_ptr<RTL_Code>
IO_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RegisterPool> reg_pool = symtab->getRegisterPool();
    rtl_code = std::make_shared<RTL_Code>();
    var->build_rtl(symtab);
    if (opd == IO_Opd::READ) {
        std::shared_ptr<RTL_Var_Opd> varRtl =
            std::dynamic_pointer_cast<RTL_Var_Opd>(var->getRTLPlace());
        Type varType = varRtl->getVarType();
        std::shared_ptr<Move_RTL_Stmt> syscallLoad;
        std::shared_ptr<RTL_Register_Opd> v0 = reg_pool->getV0();
        v0->getReg()->setTemp(nullptr);
        std::shared_ptr<Read_RTL_Stmt> readStmt =
            std::make_shared<Read_RTL_Stmt>();
        std::shared_ptr<Store_RTL_Stmt> storeStmt;
        if (varType == Type::FLOAT) {
            std::shared_ptr<RTL_Int_Const_Opd> syscallInt =
                std::make_shared<RTL_Int_Const_Opd>(7);
            syscallLoad =
                std::make_shared<Move_RTL_Stmt>(v0, syscallInt, Opd_Type::INT);
            std::shared_ptr<RTL_Register_Opd> f0 = reg_pool->getF0();
            storeStmt =
                std::make_shared<Store_RTL_Stmt>(varRtl, f0, Opd_Type::FLOAT);
            f0->getReg()->markFree();
        } else {
            std::shared_ptr<RTL_Int_Const_Opd> syscallInt =
                std::make_shared<RTL_Int_Const_Opd>(5);
            syscallLoad =
                std::make_shared<Move_RTL_Stmt>(v0, syscallInt, Opd_Type::INT);
            storeStmt =
                std::make_shared<Store_RTL_Stmt>(varRtl, v0, Opd_Type::INT);
        }
        v0->getReg()->markFree();
        rtl_code->append(syscallLoad, readStmt, storeStmt);
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
        else if (varType == Opd_Type::STR)
            type = Type::STRING;

        std::shared_ptr<Move_RTL_Stmt> syscallLoad;
        std::shared_ptr<Move_RTL_Stmt> argLoad;
        std::shared_ptr<RTL_Register_Opd> argReg;
        std::shared_ptr<RTL_Register_Opd> v0 = reg_pool->getV0();
        std::shared_ptr<RTL_Register_Opd> backupReg;
        std::shared_ptr<Move_RTL_Stmt> backupMove;
        if (!v0->getReg()->isFree()) {
            backupReg = reg_pool->getRegister();
            backupMove =
                std::make_shared<Move_RTL_Stmt>(backupReg, v0, Opd_Type::TEMP);
        } else
            v0->getReg()->setTemp(nullptr);
        if (type == Type::FLOAT) {
            std::shared_ptr<RTL_Int_Const_Opd> syscallInt =
                std::make_shared<RTL_Int_Const_Opd>(3);
            syscallLoad =
                std::make_shared<Move_RTL_Stmt>(v0, syscallInt, Opd_Type::INT);
            argReg = reg_pool->getFloatArgRegister();
            argLoad = std::make_shared<Move_RTL_Stmt>(argReg, varPlace, varType,
                                                      type);
        } else {
            std::shared_ptr<RTL_Int_Const_Opd> syscallInt;
            if (type == Type::STRING)
                syscallInt = std::make_shared<RTL_Int_Const_Opd>(4);
            else
                syscallInt = std::make_shared<RTL_Int_Const_Opd>(1);
            syscallLoad =
                std::make_shared<Move_RTL_Stmt>(v0, syscallInt, Opd_Type::INT);
            argReg = reg_pool->getArgRegister();
            if (backupReg)
                argLoad = std::make_shared<Move_RTL_Stmt>(argReg, backupReg,
                                                          varType, type);
            else {
                argLoad = std::make_shared<Move_RTL_Stmt>(argReg, varPlace,
                                                          varType, type);
            }
        }

        std::shared_ptr<Write_RTL_Stmt> write =
            std::make_shared<Write_RTL_Stmt>();
        rtl_code->append(var->getRTLCode(), backupMove, syscallLoad, argLoad,
                         write);
        v0->getReg()->markFree();
        argReg->getReg()->markFree();
        if (backupReg)
            backupReg->getReg()->markFree();
        if (varType == Opd_Type::TEMP) {
            std::shared_ptr<RTL_Register_Opd> varReg =
                std::dynamic_pointer_cast<RTL_Register_Opd>(varPlace);
            varReg->getReg()->markFree();
        }
    }
    return rtl_code;
}

std::shared_ptr<RTL_Code>
Label_TAC_Stmt::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    rtl_code = std::make_shared<RTL_Code>();
    label->build_rtl(symtab);
    std::shared_ptr<RTL_Label_Opd> labelRtl =
        std::dynamic_pointer_cast<RTL_Label_Opd>(label->getRTLPlace());
    std::shared_ptr<Label_RTL_Stmt> labelStmt =
        std::make_shared<Label_RTL_Stmt>(labelRtl);
    rtl_code->append(label->getRTLCode(), labelStmt);
    return rtl_code;
}

std::shared_ptr<RTL_Code>
TAC_Code::build_rtl(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<RTL_Code> code = std::make_shared<RTL_Code>();
    for (auto tacStmt : tacStmts)
        code->append(tacStmt->build_rtl(symtab));
    return code;
}

void Func_Ast::build_rtl() { rtl_code = code->build_rtl(proc_table); }

void Root_Ast::build_rtl() {
    for (const std::shared_ptr<Func_Ast> &func : funcs)
        func->build_rtl();
}