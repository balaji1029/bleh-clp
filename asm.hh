#pragma once

#include <iostream>

class ASM {
  public:
    virtual void print(std::ostream &) = 0;
};

class ASM_Opd : public ASM {};

class ASM_Double_Const_Opd : public ASM_Opd {};

class ASM_Int_Const_Opd : public ASM_Opd {};

class ASM_Label_Opd : public ASM_Opd {};

class ASM_Mem_Opd : public ASM_Opd {};

class ASM_Register_Opd : public ASM_Opd {};

class ASM_Str_Const_Opd : public ASM_Opd {};

class ASM_Zero_Opd : public ASM_Opd {};

class ASM_Stmt : public ASM {};

class Compute_ASM_Stmt : public ASM_Stmt {};

class Call_ASM_Stmt : public ASM_Stmt {};

class Goto_ASM_Stmt : public ASM_Stmt {};

class If_Goto_ASM_Stmt : public ASM_Stmt {};

class Jump_Reg_ASM_Stmt : public ASM_Stmt {};

class Label_ASM_Stmt : public ASM_Stmt {};

class Move_ASM_Stmt : public ASM_Stmt {};

class Syscall_ASM_Stmt : public ASM_Stmt {};
