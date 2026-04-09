#include "asm.hh"
#include "rtl.hh"

void RTL_Double_Const_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Int_Const_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Label_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Register_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Var_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Zero_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Function_Call_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void RTL_Str_Const_Opd::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Compute_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Goto_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void If_Goto_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Return_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Label_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Move_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Read_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Write_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Load_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Store_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Function_Call_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}

void Stack_RTL_Stmt::build_ASM(std::shared_ptr<ProcSymbolTable>) {}