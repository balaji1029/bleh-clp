#pragma once

#include "register.hh"
#include "symtab.hh"
#include <iostream>
#include <memory>

class RTL_Opd {
  public:
    virtual void print(std::ostream &) = 0;
};

class RTL_Double_Const_Opd : RTL_Opd {
    double value;

  public:
    RTL_Double_Const_Opd(double);
    void print(std::ostream &) override;
};

class RTL_Int_Const_Opd : RTL_Opd {
    int value;

  public:
    RTL_Int_Const_Opd(int);
    void print(std::ostream &) override;
};

class RTL_Label_Opd : RTL_Opd {
    int label_index;

  public:
    RTL_Label_Opd(int);
    void print(std::ostream &) override;
};

class RTL_Register_Opd : RTL_Opd {
    std::shared_ptr<Register> reg;

  public:
    RTL_Register_Opd(std::shared_ptr<Register>);
    void print(std::ostream &) override;
};

class RTL_Str_Const_Opd : RTL_Opd {
    std::string value;

  public:
    RTL_Str_Const_Opd(std::string);
    void print(std::ostream &) override;
};

class RTL_Var_Opd : RTL_Opd {
    std::shared_ptr<SymTabEntry> entry;

  public:
    RTL_Var_Opd(std::shared_ptr<SymTabEntry>);
    void print(std::ostream &) override;
};

class RTL_Stmt {
  public:
    virtual void print(std::ostream &) = 0;
};

class Compute_RTL_Stmt : RTL_Stmt {
    std::shared_ptr<RTL_Opd> lOpd;
    std::shared_ptr<RTL_Opd> rOpd;

    Binary_Opd_Type opd;

  public:
    Compute_RTL_Stmt(std::shared_ptr<RTL_Opd>, std::shared_ptr<RTL_Opd>,
                     Binary_Opd_Type);
    void print(std::ostream &) override;
};

class Control_Flow_RTL_Stmt : RTL_Stmt {

  public:
    virtual void print(std::ostream &) = 0;
};

// TODO: A5
class Call_RTL_Stmt : Control_Flow_RTL_Stmt {
  public:
    virtual void print(std::ostream &) = 0;
};

class Goto_RTL_Stmt : Control_Flow_RTL_Stmt {
    std::shared_ptr<RTL_Label_Opd> label;

  public:
    Goto_RTL_Stmt(std::shared_ptr<RTL_Label_Opd>);
    void print(std::ostream &) override;
};

class If_Goto_RTL_Stmt : Control_Flow_RTL_Stmt {
    std::shared_ptr<RTL_Register_Opd> reg;
    std::shared_ptr<RTL_Label_Opd> label;

  public:
    If_Goto_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>,
                     std::shared_ptr<RTL_Label_Opd>);
    void print(std::ostream &) override;
};

// TODO: A5
class Return_RTL_Stmt : Control_Flow_RTL_Stmt {
  public:
    virtual void print(std::ostream &) = 0;
};

class Label_RTL_Stmt : RTL_Stmt {
    std::shared_ptr<RTL_Label_Opd> label;

  public:
    Label_RTL_Stmt(std::shared_ptr<RTL_Label_Opd>);
    void print(std::ostream &) override;
};

class Move_RTL_Stmt : RTL_Stmt {
    std::shared_ptr<RTL_Register_Opd> lReg;
    std::shared_ptr<RTL_Register_Opd> rReg;

  public:
    Move_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>,
                  std::shared_ptr<RTL_Register_Opd>);
    void print(std::ostream &) override;
};

class Read_RTL_Stmt : RTL_Stmt {
    std::shared_ptr<RTL_Var_Opd> var;

  public:
    Read_RTL_Stmt(std::shared_ptr<RTL_Var_Opd>);
    void print(std::ostream &) override;
};

class Write_RTL_Stmt : RTL_Stmt {
    std::shared_ptr<RTL_Var_Opd> var;

  public:
    Write_RTL_Stmt(std::shared_ptr<RTL_Var_Opd>);
    void print(std::ostream &) override;
};

class RTL_Code {
    std::vector<std::shared_ptr<RTL_Stmt>> rtlStmts;

  public:
    bool is_empty();

    void append(std::shared_ptr<RTL_Stmt>);
    void append(std::shared_ptr<RTL_Code>);

    template <typename... Args>
        requires(sizeof...(Args) > 1)
    void append(Args... args) {
        (append(args), ...);
    }

    void print(std::ostream &);
};