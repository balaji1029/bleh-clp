#pragma once

#include "register.hh"
#include "rtl.hh"
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
  protected:
    std::shared_ptr<RTL_Code> rtl_code;

    std::shared_ptr<RTL_Opd> rtl_place;

  public:
    virtual void print(std::ostream &) = 0;

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;

    std::shared_ptr<RTL_Opd> getRTLPlace();

    std::shared_ptr<RTL_Code> getRTLCode();
};

class TAC_Expr : public TAC_Opd {
  public:
    virtual void print(std::ostream &) = 0;

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;
};

class TAC_LOpd : virtual public TAC_Expr {
  protected:
    Type type;

  public:
    virtual void print(std::ostream &os) = 0;

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;

    void set_type(Type);

    Type get_type();
};

class Printable_Opd : virtual public TAC_Expr {
  public:
    virtual void print(std::ostream &) = 0;

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;
};

class Binary_TAC_Opd : public TAC_Expr {
    std::shared_ptr<Printable_Opd> lOpd;
    std::shared_ptr<Printable_Opd> rOpd;
    Binary_Opd_Type opd;
    std::shared_ptr<Temporary_TAC_Opd> temp;

  public:
    Binary_TAC_Opd(std::shared_ptr<Printable_Opd>,
                   std::shared_ptr<Printable_Opd>, const Binary_Opd_Type &,
                   std::shared_ptr<Temporary_TAC_Opd>);

    virtual ~Binary_TAC_Opd() {}

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Float_Const_TAC_Opd : public Printable_Opd {
    double value;

  public:
    Float_Const_TAC_Opd(double);

    virtual ~Float_Const_TAC_Opd() {}

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Int_Const_TAC_Opd : public Printable_Opd {
    int value;

  public:
    Int_Const_TAC_Opd(int);

    virtual ~Int_Const_TAC_Opd() {}

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Str_Const_TAC_Opd : public Printable_Opd {
    std::string value;

  public:
    Str_Const_TAC_Opd(std::string);

    virtual ~Str_Const_TAC_Opd() {}

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Label_TAC_Opd : public TAC_Opd {
    static int index;
    int label_index;

  public:
    Label_TAC_Opd();

    virtual ~Label_TAC_Opd() {}

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Temporary_TAC_Opd
    : public TAC_LOpd,
      public Printable_Opd,
      public std::enable_shared_from_this<Temporary_TAC_Opd> {
  protected:
    int temp_num;

  public:
    Temporary_TAC_Opd(int);

    virtual ~Temporary_TAC_Opd() {}

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Variable_TAC_Opd : public TAC_LOpd, public Printable_Opd {
    std::shared_ptr<SymTabEntry> entry;

  public:
    Variable_TAC_Opd(std::shared_ptr<SymTabEntry>);

    virtual ~Variable_TAC_Opd() {}

    void print(std::ostream &);

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Function_Call_TAC_Opd : public TAC_Expr {
    std::shared_ptr<FuncEntry> entry;
    std::vector<std::shared_ptr<Printable_Opd>> args;

  public:
    Function_Call_TAC_Opd(std::shared_ptr<FuncEntry>,
                          std::vector<std::shared_ptr<Printable_Opd>>);

    virtual ~Function_Call_TAC_Opd() {}

    void print(std::ostream &);

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class TAC_Stmt {
  protected:
    std::shared_ptr<RTL_Code> rtl_code;

  public:
    virtual void print(std::ostream &os) = 0;

    virtual void build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;

    std::shared_ptr<RTL_Code> getRTLCode();
};

class Function_Call_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Function_Call_TAC_Opd> opd;

  public:
    Function_Call_TAC_Stmt(std::shared_ptr<Function_Call_TAC_Opd>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Return_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Variable_TAC_Opd> opd;

  public:
    Return_TAC_Stmt(std::shared_ptr<Variable_TAC_Opd>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Assign_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<TAC_LOpd> lOpd;
    std::shared_ptr<TAC_Expr> expr;

  public:
    Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd>, std::shared_ptr<TAC_Expr>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class If_Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Printable_Opd> cond;
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    If_Goto_TAC_Stmt(std::shared_ptr<Printable_Opd>,
                     std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class IO_TAC_Stmt : public TAC_Stmt {
    IO_Opd opd;
    std::shared_ptr<Printable_Opd> var;

  public:
    IO_TAC_Stmt(IO_Opd, std::shared_ptr<Printable_Opd>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Label_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);

    void build_rtl(std::shared_ptr<ProcSymbolTable>) override;
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

    void build_rtl(std::shared_ptr<ProcSymbolTable>);

    void print_rtl(std::ostream &);
};
