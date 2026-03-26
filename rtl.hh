#pragma once

#include "register.hh"
#include "symtab.hh"
#include <iostream>
#include <memory>

enum class Binary_Opd_Type;

enum class Opd_Type { INT, FLOAT, STR, LABEL, TEMP, ZERO, VAR };

class RTL {
  public:
    virtual void print(std::ostream &) = 0;
};

class RTL_Register_Opd;
class Load_RTL_Stmt;

class RTL_Opd : public RTL {
  protected:
    Opd_Type type;
    std::shared_ptr<RTL_Register_Opd> loadedReg;

  public:
    RTL_Opd(Opd_Type);
    Opd_Type getType();
    virtual std::pair<std::shared_ptr<RTL_Register_Opd>,
                      std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) = 0;
};

class RTL_Double_Const_Opd
    : public RTL_Opd,
      public std::enable_shared_from_this<RTL_Double_Const_Opd> {
    double value;

  public:
    RTL_Double_Const_Opd(double);
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Int_Const_Opd
    : public RTL_Opd,
      public std::enable_shared_from_this<RTL_Int_Const_Opd> {
    int value;

  public:
    RTL_Int_Const_Opd(int);
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Label_Opd : public RTL_Opd {
    int label_index;

  public:
    RTL_Label_Opd(int);
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Register_Opd : public RTL_Opd,
                         public std::enable_shared_from_this<RTL_Register_Opd> {
    std::shared_ptr<Register> reg;
    Type var_type;

  public:
    RTL_Register_Opd(std::shared_ptr<Register>, Type);
    Type getVarType();
    std::shared_ptr<Register> getReg();
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Var_Opd : public RTL_Opd,
                    public std::enable_shared_from_this<RTL_Var_Opd> {
    std::shared_ptr<SymTabEntry> entry;
    Type var_type;

  public:
    RTL_Var_Opd(std::shared_ptr<SymTabEntry>, Type);
    Type getVarType();
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Stemp_Opd : public RTL_Var_Opd {
    int stemp_index;

  public:
    RTL_Stemp_Opd(int, Type);
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Zero_Opd : public RTL_Opd,
                     public std::enable_shared_from_this<RTL_Zero_Opd> {
  public:
    RTL_Zero_Opd();
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Str_Const_Opd
    : public RTL_Opd,
      public std::enable_shared_from_this<RTL_Str_Const_Opd> {
    std::string value;

  public:
    RTL_Str_Const_Opd(std::string);
    void print(std::ostream &) override;
    std::pair<std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<Load_RTL_Stmt>>
        getLoadedReg(std::shared_ptr<RegisterPool>) override;
};

class RTL_Stmt : public RTL {};

class Compute_RTL_Stmt : public RTL_Stmt {
    std::shared_ptr<RTL_Register_Opd> reg;
    std::shared_ptr<RTL_Opd> lOpd;
    std::shared_ptr<RTL_Opd> rOpd;
    Binary_Opd_Type opd;
    Type type;

  public:
    Compute_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>,
                     std::shared_ptr<RTL_Opd>, std::shared_ptr<RTL_Opd>,
                     Binary_Opd_Type, Type);
    void print(std::ostream &) override;
};

class Control_Flow_RTL_Stmt : public RTL_Stmt {};

// TODO: A5
class Call_RTL_Stmt : public Control_Flow_RTL_Stmt {
  public:
    virtual void print(std::ostream &) = 0;
};

class Goto_RTL_Stmt : public Control_Flow_RTL_Stmt {
    std::shared_ptr<RTL_Label_Opd> label;

  public:
    Goto_RTL_Stmt(std::shared_ptr<RTL_Label_Opd>);
    void print(std::ostream &) override;
};

class If_Goto_RTL_Stmt : public Control_Flow_RTL_Stmt {
    std::shared_ptr<RTL_Register_Opd> reg;
    std::shared_ptr<RTL_Label_Opd> label;

  public:
    If_Goto_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>,
                     std::shared_ptr<RTL_Label_Opd>);
    void print(std::ostream &) override;
};

// TODO: A5
class Return_RTL_Stmt : public Control_Flow_RTL_Stmt {
  public:
    virtual void print(std::ostream &) = 0;
};

class Label_RTL_Stmt : public RTL_Stmt {
    std::shared_ptr<RTL_Label_Opd> label;

  public:
    Label_RTL_Stmt(std::shared_ptr<RTL_Label_Opd>);
    void print(std::ostream &) override;
};

class Move_RTL_Stmt : public RTL_Stmt {
    std::shared_ptr<RTL_Register_Opd> lReg;
    std::shared_ptr<RTL_Register_Opd> rReg;

  public:
    Move_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>,
                  std::shared_ptr<RTL_Register_Opd>);
    void print(std::ostream &) override;
};

class Read_RTL_Stmt : public RTL_Stmt {
    std::shared_ptr<RTL_Var_Opd> var;

  public:
    Read_RTL_Stmt(std::shared_ptr<RTL_Var_Opd>);
    void print(std::ostream &) override;
};

class Write_RTL_Stmt : public RTL_Stmt {
  public:
    Write_RTL_Stmt();
    void print(std::ostream &) override;
};

class Load_RTL_Stmt : public RTL_Stmt {
    std::shared_ptr<RTL_Register_Opd> reg;
    std::shared_ptr<RTL_Opd> opd;
    Opd_Type type;
    Type var_type;
    bool movf;
    bool movt;

  public:
    Load_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Opd>,
                  Opd_Type);
    Load_RTL_Stmt(std::shared_ptr<RTL_Register_Opd>, std::shared_ptr<RTL_Opd>,
                  Opd_Type, Type);
    void setMovf();
    void setMovt();
    void print(std::ostream &) override;
};

class Store_RTL_Stmt : public RTL_Stmt {
    std::shared_ptr<RTL_Opd> var;
    std::shared_ptr<RTL_Register_Opd> reg;
    Opd_Type type;
    Type var_type;

  public:
    Store_RTL_Stmt(std::shared_ptr<RTL_Opd>, std::shared_ptr<RTL_Register_Opd>,
                   Opd_Type);
    Store_RTL_Stmt(std::shared_ptr<RTL_Opd>, std::shared_ptr<RTL_Register_Opd>,
                   Opd_Type, Type);
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

    std::shared_ptr<RTL_Stmt> getFirst();
};