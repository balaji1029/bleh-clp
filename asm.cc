#include "asm.hh"
#include "rtl.hh"

std::shared_ptr<ASM_Opd> RTL::getAsmPlace() { return asmPlace; }

std::shared_ptr<ASM_Code> RTL::getAsmCode() { return asmCode; }

ASM_Double_Const_Opd::ASM_Double_Const_Opd(double value) : value(value) {}

ASM_Int_Const_Opd::ASM_Int_Const_Opd(int value) : value(value) {}

ASM_Label_Opd::ASM_Label_Opd(int label_index) : label_index(label_index) {}

ASM_Mem_Opd::ASM_Mem_Opd(std::shared_ptr<SymTabEntry> entry, Type var_type)
    : entry(entry), var_type(var_type) {}

ASM_Register_Opd::ASM_Register_Opd(std::shared_ptr<Register> reg,
                                   Opd_Type var_type)
    : reg(reg), var_type(var_type) {}

ASM_Str_Const_Opd::ASM_Str_Const_Opd(std::string str, int id)
    : str(str), id(id) {}

ASM_Zero_Opd::ASM_Zero_Opd() {}

Compute_ASM_Stmt::Compute_ASM_Stmt(std::shared_ptr<ASM_Register_Opd> reg,
                                   std::shared_ptr<ASM_Register_Opd> lOpd,
                                   std::shared_ptr<ASM_Register_Opd> rOpd,
                                   Binary_Opd_Type opd, Type type)
    : reg(reg), lOpd(lOpd), rOpd(rOpd), opd(opd), type(type) {}

Call_ASM_Stmt::Call_ASM_Stmt(std::shared_ptr<FuncEntry> entry) : entry(entry) {}

Goto_ASM_Stmt::Goto_ASM_Stmt(std::shared_ptr<ASM_Label_Opd> label)
    : label(label) {}

If_Goto_ASM_Stmt::If_Goto_ASM_Stmt(std::shared_ptr<ASM_Register_Opd> reg,
                                   std::shared_ptr<ASM_Label_Opd> label)
    : reg(reg), label(label) {}

Jump_Reg_ASM_Stmt::Jump_Reg_ASM_Stmt(std::shared_ptr<ASM_Register_Opd> reg)
    : reg(reg) {}

Label_ASM_Stmt::Label_ASM_Stmt(std::shared_ptr<ASM_Label_Opd> label)
    : label(label) {}

Move_ASM_Stmt::Move_ASM_Stmt(std::shared_ptr<ASM_Register_Opd> reg,
                             std::shared_ptr<ASM_Opd> opd, Opd_Type type,
                             Type var_type, bool movf, bool movt, bool store,
                             bool stack)
    : reg(reg), opd(opd), type(type), var_type(var_type), movf(movf),
      movt(movt), store(store), stack(stack) {}

Syscall_ASM_Stmt::Syscall_ASM_Stmt() {}

std::shared_ptr<ASM_Code> RTL_Double_Const_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Double_Const_Opd>(value);
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Int_Const_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Int_Const_Opd>(value);
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Label_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Label_Opd>(label_index);
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Register_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Register_Opd>(reg, type);
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Var_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Mem_Opd>(entry, var_type);
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Zero_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Zero_Opd>();
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Function_Call_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Str_Const_Opd::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    asmPlace = std::make_shared<ASM_Str_Const_Opd>(str, id);
    return asmCode;
}

std::shared_ptr<ASM_Code> Compute_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    reg->build_asm(symtab);
    lOpd->build_asm(symtab);
    if (rOpd)
        rOpd->build_asm(symtab);
    std::shared_ptr<ASM_Register_Opd> regAsm =
        std::dynamic_pointer_cast<ASM_Register_Opd>(reg->getAsmPlace());
    std::shared_ptr<ASM_Register_Opd> lAsm =
        std::dynamic_pointer_cast<ASM_Register_Opd>(lOpd->getAsmPlace());
    std::shared_ptr<ASM_Register_Opd> rAsm;
    if (rOpd)
        rAsm = std::dynamic_pointer_cast<ASM_Register_Opd>(rOpd->getAsmPlace());
    else
        rAsm = nullptr;
    std::shared_ptr<Compute_ASM_Stmt> asmStmt =
        std::make_shared<Compute_ASM_Stmt>(regAsm, lAsm, rAsm, opd, type);
    asmCode->append(asmStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Goto_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    label->build_asm(symtab);
    std::shared_ptr<ASM_Label_Opd> labelAsm =
        std::dynamic_pointer_cast<ASM_Label_Opd>(label->getAsmPlace());
    std::shared_ptr<Goto_ASM_Stmt> gotoStmt =
        std::make_shared<Goto_ASM_Stmt>(labelAsm);
    asmCode->append(gotoStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> If_Goto_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    reg->build_asm(symtab);
    label->build_asm(symtab);
    std::shared_ptr<ASM_Register_Opd> regAsm =
        std::dynamic_pointer_cast<ASM_Register_Opd>(reg->getAsmPlace());
    std::shared_ptr<ASM_Label_Opd> labelAsm =
        std::dynamic_pointer_cast<ASM_Label_Opd>(label->getAsmPlace());
    std::shared_ptr<If_Goto_ASM_Stmt> ifGotoStmt =
        std::make_shared<If_Goto_ASM_Stmt>(regAsm, labelAsm);
    asmCode->append(ifGotoStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Return_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    reg->build_asm(symtab);
    std::shared_ptr<ASM_Register_Opd> regAsm =
        std::dynamic_pointer_cast<ASM_Register_Opd>(reg->getAsmPlace());
    std::shared_ptr<Jump_Reg_ASM_Stmt> jrStmt =
        std::make_shared<Jump_Reg_ASM_Stmt>(regAsm);
    asmCode->append(jrStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Label_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    label->build_asm(symtab);
    std::shared_ptr<ASM_Label_Opd> labelAsm =
        std::dynamic_pointer_cast<ASM_Label_Opd>(label);
    std::shared_ptr<Label_ASM_Stmt> labelStmt =
        std::make_shared<Label_ASM_Stmt>(labelAsm);
    asmCode->append(labelStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Read_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    std::shared_ptr<Syscall_ASM_Stmt> syscallStmt =
        std::make_shared<Syscall_ASM_Stmt>();
    asmCode->append(syscallStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Write_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    std::shared_ptr<Syscall_ASM_Stmt> syscallStmt =
        std::make_shared<Syscall_ASM_Stmt>();
    asmCode->append(syscallStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Move_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    reg->build_asm(symtab);
    opd->build_asm(symtab);
    std::shared_ptr<ASM_Register_Opd> regAsm =
        std::dynamic_pointer_cast<ASM_Register_Opd>(reg->getAsmPlace());
    std::shared_ptr<Move_ASM_Stmt> moveStmt = std::make_shared<Move_ASM_Stmt>(
        regAsm, opd->getAsmPlace(), type, var_type, movf, movt, false, false);
    asmCode->append(moveStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Store_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    var->build_asm(symtab);
    reg->build_asm(symtab);
    std::shared_ptr<ASM_Register_Opd> regAsm =
        std::dynamic_pointer_cast<ASM_Register_Opd>(reg->getAsmPlace());
    std::shared_ptr<Move_ASM_Stmt> moveStmt = std::make_shared<Move_ASM_Stmt>(
        regAsm, var->getAsmPlace(), type, var_type, false, false, true, false);
    asmCode->append(moveStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Function_Call_RTL_Stmt::build_asm(
    std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    func->build_asm(symtab);
    std::shared_ptr<Call_ASM_Stmt> callStmt =
        std::make_shared<Call_ASM_Stmt>(func->getEntry());
    asmCode->append(callStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> Stack_RTL_Stmt::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    asmCode = std::make_shared<ASM_Code>();
    std::shared_ptr<ASM_Register_Opd> regAsm;
    std::shared_ptr<Move_ASM_Stmt> moveStmt;
    if (reg) {
        reg->build_asm(symtab);
        regAsm =
            std::dynamic_pointer_cast<ASM_Register_Opd>(reg->getAsmPlace());
        moveStmt = std::make_shared<Move_ASM_Stmt>(
            regAsm, nullptr, reg->getType(), reg->getVarType(), false, false,
            false, true);
    } else
        moveStmt = std::make_shared<Move_ASM_Stmt>(regAsm, nullptr,
                                                   Opd_Type::INT, Type::INT,
                                                   false, false, false, true);
    asmCode->append(moveStmt);
    return asmCode;
}

std::shared_ptr<ASM_Code> RTL_Code::build_asm(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<ASM_Code> asmCode = std::make_shared<ASM_Code>(); 
    for (auto rtlStmt : rtlStmts) {
        rtlStmt->build_asm(symtab);
    }
    return asmCode;
}

void ASM_Code::append(std::shared_ptr<ASM_Stmt> asmStmt) {
    if (asmStmt)
        asmStmts.push_back(asmStmt);
}

void ASM_Code::append(std::shared_ptr<ASM_Code> code) {
    if (code)
        asmStmts.insert(asmStmts.end(), code->asmStmts.begin(),
                        code->asmStmts.end());
}

bool ASM_Code::is_empty() { return asmStmts.size() == 0; }

void Func_Ast::build_asm() {
    asm_code = rtl_code->build_asm(proc_table);
}

void Root_Ast::build_asm(std::shared_ptr<GlobalSymbolTable> symtab) {
    for (std::shared_ptr<Func_Ast> func : funcs) 
        func->build_asm();
}
