#pragma once

#include "symtab.hh"
#include <initializer_list>
#include <memory>

class SymTabEntry;
enum class Binary_Opd_Type;

enum class IO_Opd {
    WRITE,
    READ,
};

class TAC_Opd {
  public:
    virtual void print(std::ostream &) = 0;
};

class TAC_Expr : public TAC_Opd {
  public:
    virtual void print(std::ostream &) = 0;
};

class TAC_LOpd : public TAC_Expr {
  public:
    virtual void print(std::ostream &os) = 0;
};

class Printable_Opd : public TAC_Expr {
  public:
    virtual void print(std::ostream &) = 0;
};

class Binary_TAC_Opd : public TAC_Expr {
    std::shared_ptr<Printable_Opd> lOpd;
    std::shared_ptr<Printable_Opd> rOpd;
    Binary_Opd_Type opd;

  public:
    Binary_TAC_Opd(std::shared_ptr<Printable_Opd>, std::shared_ptr<Printable_Opd>, const Binary_Opd_Type &);

    virtual ~Binary_TAC_Opd() {}

    void print(std::ostream &);
};

class Numeric : public TAC_Opd {
  public:
    virtual void print(std::ostream &) = 0;
};

class Float_Const_TAC_Opd : public Printable_Opd {
    double value;

  public:
    Float_Const_TAC_Opd(double);

    virtual ~Float_Const_TAC_Opd() {}

    void print(std::ostream &);
};

class Int_Const_TAC_Opd : public Printable_Opd {
    int value;

  public:
    Int_Const_TAC_Opd(int);

    virtual ~Int_Const_TAC_Opd() {}

    void print(std::ostream &);
};

class Str_Const_TAC_Opd : public Printable_Opd {
    std::string value;

  public:
    Str_Const_TAC_Opd(std::string);

    virtual ~Str_Const_TAC_Opd() {}

    void print(std::ostream &);
};

class Label_TAC_Opd : public TAC_Opd {
    static int index;
    int label_index;

  public:
    Label_TAC_Opd();

    virtual ~Label_TAC_Opd() {}

    void print(std::ostream &);
};

class Temporary_TAC_Opd : public TAC_LOpd, public Printable_Opd {
  protected:
    int temp_num;

  public:
    Temporary_TAC_Opd(int);

    virtual ~Temporary_TAC_Opd() {}

    void print(std::ostream &);
};

class STemporary_TAC_Opd : public Temporary_TAC_Opd {
  public:
    STemporary_TAC_Opd(int);

    virtual ~STemporary_TAC_Opd() {}

    void print(std::ostream &);
};

class Variable_TAC_Opd : public TAC_LOpd, public Printable_Opd {
    std::shared_ptr<SymTabEntry> entry;

  public:
    Variable_TAC_Opd(std::shared_ptr<SymTabEntry>);

    virtual ~Variable_TAC_Opd() {}

    void print(std::ostream &);
};

class TAC_Stmt {
  public:
    virtual void print(std::ostream &os) = 0;
};

class Assign_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<TAC_LOpd> lOpd;
    std::shared_ptr<TAC_Expr> expr;

  public:
    Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd>, std::shared_ptr<TAC_Expr>);

    void print(std::ostream &);
};

class Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);
};

class If_Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Printable_Opd> cond;
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    If_Goto_TAC_Stmt(std::shared_ptr<Printable_Opd>, std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);
};

class IO_TAC_Stmt : public TAC_Stmt {
    IO_Opd opd;
    std::shared_ptr<Printable_Opd> var;

  public:
    IO_TAC_Stmt(IO_Opd, std::shared_ptr<Printable_Opd>);

    void print(std::ostream &);
};

class Label_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);
};

class TAC_Code {
    std::vector<std::shared_ptr<TAC_Stmt>> tacStmts;

  public:
    bool is_empty();

    void append(std::shared_ptr<TAC_Stmt>);
    void append(std::shared_ptr<TAC_Code>);

    template <typename... Args>
        requires(sizeof...(Args) > 1)
    void append(Args... args) {
        (append(args), ...);
    }

    void print(std::ostream &);
};
