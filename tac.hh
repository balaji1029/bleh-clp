#pragma once

#include "symtab.hh"

#include <memory>

enum class IO_Opd {
    WRITE,
    PRINT,
};

class TAC_Code {
    std::vector<std::shared_ptr<TAC_Stmt>> tacStmts;

  public:
    void append(std::shared_ptr<TAC_Stmt>);
    void append(std::shared_ptr<TAC_Code>);

    
};

class TAC_Stmt {
  public:
    virtual ~TAC_Stmt() = 0;
};

class Assign_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<TAC_LOpd> lOpd;
    std::shared_ptr<TAC_Expr> expr;

  public:
    Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd>, std::shared_ptr<TAC_Expr>);
};

class Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);
};

class If_Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Temporary_TAC_Opd> cond;
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    If_Goto_TAC_Stmt(std::shared_ptr<Temporary_TAC_Opd>, std::shared_ptr<Label_TAC_Opd>);
};

class IO_TAC_Stmt : public TAC_Stmt {
    IO_Opd opd;
    std::shared_ptr<TAC_LOpd> var;

  public:
    IO_TAC_Stmt(IO_Opd, std::shared_ptr<TAC_LOpd>);
};

class Label_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);
};

class TAC_Opd {
  public:
    virtual ~TAC_Opd() = 0;
};

class TAC_Expr {
  public:
    virtual ~TAC_Expr() = 0;
};

class TAC_LOpd {
  public:
    virtual ~TAC_LOpd() = 0;
};

class Float_Const_TAC_Opd : public TAC_Opd, public TAC_Expr {
    double value;

  public:
    Float_Const_TAC_Opd(double);
};

class Int_Const_TAC_Opd : public TAC_Opd, public TAC_Expr {
    int value;

  public:
    Int_Const_TAC_Opd(int);
};

class Str_Const_TAC_Opd : public TAC_Opd, public TAC_Expr {
    std::string value;

  public:
    Str_Const_TAC_Opd(std::string);
};

class Label_TAC_Opd : public TAC_Opd {
    static int index;
    int label_index;

  public:
    Label_TAC_Opd();
};

class Temporary_TAC_Opd : public TAC_Opd, public TAC_Expr, public TAC_LOpd {
    int temp_mum;

  public:
    Temporary_TAC_Opd(int);
};

class STemporary_TAC_Opd : public Temporary_TAC_Opd {
  public:
    STemporary_TAC_Opd(int);
};

class Variable_TAC_Opd : public TAC_Opd, public TAC_Expr, public TAC_LOpd {
    std::shared_ptr<SymTabEntry> entry;

  public:
    Variable_TAC_Opd(std::shared_ptr<SymTabEntry>);
};
