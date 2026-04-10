#pragma once

#include "ast.hh"
#include "symtab.hh"

#include <iostream>
#include <memory>

class ASM {
  public:
    virtual void print(std::ostream &) = 0;
};

class ASM_Opd : public ASM {};

class ASM_Double_Const_Opd : public ASM_Opd {
    double value;

  public:
    ASM_Double_Const_Opd(double);
    void print(std::ostream &) override;
};

class ASM_Int_Const_Opd : public ASM_Opd {
    int value;

  public:
    ASM_Int_Const_Opd(int);
    void print(std::ostream &) override;
};

class ASM_Label_Opd : public ASM_Opd {
    int label_index;

  public:
    ASM_Label_Opd(int);
    void print(std::ostream &) override;
};

class ASM_Mem_Opd : public ASM_Opd {
    std::shared_ptr<SymTabEntry> entry;
    Type var_type;

  public:
    ASM_Mem_Opd(std::shared_ptr<SymTabEntry>, Type);
    void print(std::ostream &) override;
};

class ASM_Register_Opd : public ASM_Opd {
    std::shared_ptr<Register> reg;
    Opd_Type var_type;

  public:
    ASM_Register_Opd(std::shared_ptr<Register>, Opd_Type);
    void print(std::ostream &) override;
};

class ASM_Str_Const_Opd : public ASM_Opd {
    std::string str;
    int id;

  public:
    ASM_Str_Const_Opd(std::string, int);
    void print(std::ostream &) override;
};

class ASM_Zero_Opd : public ASM_Opd {
  public:
    ASM_Zero_Opd();
    void print(std::ostream &) override;
};

class ASM_Stmt : public ASM {};

class Compute_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<ASM_Register_Opd> reg;
    std::shared_ptr<ASM_Register_Opd> lOpd;
    std::shared_ptr<ASM_Register_Opd> rOpd;
    Binary_Opd_Type opd;
    Type type;

  public:
    Compute_ASM_Stmt(std::shared_ptr<ASM_Register_Opd>,
                     std::shared_ptr<ASM_Register_Opd>,
                     std::shared_ptr<ASM_Register_Opd>, Binary_Opd_Type, Type);
    void print(std::ostream &) override;
};

class Call_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<FuncEntry> entry;

  public:
    Call_ASM_Stmt(std::shared_ptr<FuncEntry>);
    void print(std::ostream &) override;
};

class Goto_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<ASM_Label_Opd> label;

  public:
    Goto_ASM_Stmt(std::shared_ptr<ASM_Label_Opd>);
    void print(std::ostream &) override;
};

class If_Goto_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<ASM_Register_Opd> reg;
    std::shared_ptr<ASM_Label_Opd> label;

  public:
    If_Goto_ASM_Stmt(std::shared_ptr<ASM_Register_Opd>,
                     std::shared_ptr<ASM_Label_Opd>);
    void print(std::ostream &) override;
};

class Jump_Reg_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<ASM_Register_Opd> reg;

  public:
    Jump_Reg_ASM_Stmt(std::shared_ptr<ASM_Register_Opd>);
    void print(std::ostream &) override;
};

class Label_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<ASM_Label_Opd> label;

  public:
    Label_ASM_Stmt(std::shared_ptr<ASM_Label_Opd>);
    void print(std::ostream &) override;
};

class Move_ASM_Stmt : public ASM_Stmt {
    std::shared_ptr<ASM_Register_Opd> reg;
    std::shared_ptr<ASM_Opd> opd;
    Opd_Type type;
    Type var_type;
    bool movf;
    bool movt;
    bool store;
    bool stack;

  public:
    Move_ASM_Stmt(std::shared_ptr<ASM_Register_Opd>, std::shared_ptr<ASM_Opd>,
                  Opd_Type, Type, bool, bool, bool, bool);
    void print(std::ostream &) override;
};

class Syscall_ASM_Stmt : public ASM_Stmt {
  public:
    Syscall_ASM_Stmt();
    void print(std::ostream &) override;
};

class ASM_Code {
    std::vector<std::shared_ptr<ASM_Stmt>> asmStmts;

  public:
    bool is_empty();

    void append(std::shared_ptr<ASM_Stmt>);

    void append(std::shared_ptr<ASM_Code>);

    template <typename... Args>
        requires(sizeof...(Args) > 1)
    void append(Args... args) {
        (append(args), ...);
    }

    void print(std::ostream &);
};