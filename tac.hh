#pragma once

#include "register.hh"
#include "rtl.hh"
#include "symtab.hh"
#include <initializer_list>
#include <memory>
#include <set>
#include <variant>

class SymTabEntry;
enum class Binary_Opd_Type;

enum class IO_Opd {
    WRITE,
    READ,
};

enum class TAC_Stmt_Type {
    ASSIGN,
    CALL,
    LABEL,
    GOTO,
    IF_GOTO,
    IO,
    RETURN,
};

class TAC_Stmt;
class TAC_LOpd;
class Variable_TAC_Opd;
class RTL_Code;
class RTL_Opd;

struct WeakPtrComp {
    bool operator()(const std::weak_ptr<TAC_Stmt> &a,
                    const std::weak_ptr<TAC_Stmt> &b) const {
        return a.lock().get() < b.lock().get();
    }
};

enum class TAC_Opd_Type { BINARY, FLOAT, INT, STRING, LABEL, TEMP, VAR, CALL };

struct Var_TAC_Opd_Cmp;

class TAC_Opd {
  protected:
    std::shared_ptr<RTL_Code> rtl_code;

    std::shared_ptr<RTL_Opd> rtl_place;

    TAC_Opd_Type opd_type;

  public:
    TAC_Opd(TAC_Opd_Type opd_type) : opd_type(opd_type) {}

    virtual void print(std::ostream &) = 0;

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;

    std::shared_ptr<RTL_Opd> getRTLPlace();

    std::shared_ptr<RTL_Code> getRTLCode();

    TAC_Opd_Type get_opd_type() { return opd_type; }

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() = 0;
};

class TAC_Expr : public TAC_Opd {
  public:
    TAC_Expr(TAC_Opd_Type opd_type) : TAC_Opd(opd_type) {}

    virtual void print(std::ostream &) = 0;

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;
};

class TAC_LOpd : virtual public TAC_Expr {
  protected:
    Type type;

  public:
    virtual void print(std::ostream &os) = 0;

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;

    void set_type(Type);

    Type get_type();

    virtual std::string get_name() = 0;

    virtual std::variant<std::shared_ptr<SymTabEntry>, int> get_ptr() = 0;
};

class Printable_Opd : virtual public TAC_Expr {
  public:
    virtual void print(std::ostream &) = 0;

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;
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

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;
};

class Float_Const_TAC_Opd : public Printable_Opd {
    double value;

  public:
    Float_Const_TAC_Opd(double);

    virtual ~Float_Const_TAC_Opd() {}

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;
};

class Int_Const_TAC_Opd : public Printable_Opd {
    int value;

  public:
    Int_Const_TAC_Opd(int);

    virtual ~Int_Const_TAC_Opd() {}

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;
};

class Str_Const_TAC_Opd : public Printable_Opd {
    std::string value;

  public:
    Str_Const_TAC_Opd(std::string);

    virtual ~Str_Const_TAC_Opd() {}

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;
};

class Label_TAC_Opd : public TAC_Opd {
    static int index;
    int label_index;

  public:
    Label_TAC_Opd();

    virtual ~Label_TAC_Opd() {}

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;
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

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;

    virtual std::string get_name() { return "temp" + std::to_string(temp_num); }

    std::variant<std::shared_ptr<SymTabEntry>, int> get_ptr() {
        return temp_num;
    }
};

class Variable_TAC_Opd : public TAC_LOpd,
                         public Printable_Opd,
                         public std::enable_shared_from_this<Variable_TAC_Opd> {

    std::shared_ptr<SymTabEntry> entry;

  public:
    static std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> globals;

    Variable_TAC_Opd(std::shared_ptr<SymTabEntry>);

    virtual ~Variable_TAC_Opd() {}

    bool is_global() { return entry->is_global(); }

    void print(std::ostream &);

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;

    virtual std::string get_name() { return entry->get_name(); }

    std::variant<std::shared_ptr<SymTabEntry>, int> get_ptr() { return entry; }
};

class Function_Call_TAC_Opd : public TAC_Expr {
    std::shared_ptr<FuncEntry> entry;
    std::vector<std::shared_ptr<Printable_Opd>> args;

  public:
    Function_Call_TAC_Opd(std::shared_ptr<FuncEntry>,
                          std::vector<std::shared_ptr<Printable_Opd>>);

    virtual ~Function_Call_TAC_Opd() {}

    void print(std::ostream &);

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    virtual std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    get_gen() override;
};

class TAC_Stmt {
  protected:
    std::shared_ptr<RTL_Code> rtl_code;
    bool leader = false;
    TAC_Stmt_Type stmt_type;

    std::set<std::weak_ptr<TAC_Stmt>, WeakPtrComp> successors;
    std::set<std::weak_ptr<TAC_Stmt>, WeakPtrComp> predecessors;

    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> gen;
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> kill;

  public:
    TAC_Stmt(TAC_Stmt_Type type) : stmt_type(type) {}

    TAC_Stmt_Type get_stmt_type() const { return stmt_type; }

    virtual void print(std::ostream &os) = 0;

    virtual std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) = 0;

    std::shared_ptr<RTL_Code> getRTLCode();

    void mark_leader();

    void add_successor(std::shared_ptr<TAC_Stmt>);

    void add_predecessor(std::shared_ptr<TAC_Stmt>);

    const std::set<std::weak_ptr<TAC_Stmt>, WeakPtrComp> &get_successors();

    const std::set<std::weak_ptr<TAC_Stmt>, WeakPtrComp> &get_predecessors();

    void delete_cfg();

    const std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> &get_gen();

    const std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> &get_kill();

    bool is_leader() const;
};

class Function_Call_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Function_Call_TAC_Opd> opd;

  public:
    Function_Call_TAC_Stmt(std::shared_ptr<Function_Call_TAC_Opd>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Return_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Variable_TAC_Opd> opd;

  public:
    Return_TAC_Stmt(std::shared_ptr<Variable_TAC_Opd>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Assign_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<TAC_LOpd> lOpd;
    std::shared_ptr<TAC_Expr> expr;

  public:
    Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd>, std::shared_ptr<TAC_Expr>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    bool has_call() { return expr->get_opd_type() == TAC_Opd_Type::CALL; }
};

class Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    std::shared_ptr<Label_TAC_Opd> get_label() { return label; }
};

class If_Goto_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Printable_Opd> cond;
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    If_Goto_TAC_Stmt(std::shared_ptr<Printable_Opd>,
                     std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    std::shared_ptr<Label_TAC_Opd> get_label() { return label; }
};

class IO_TAC_Stmt : public TAC_Stmt {
    IO_Opd opd;
    std::shared_ptr<Printable_Opd> var;

  public:
    IO_TAC_Stmt(IO_Opd, std::shared_ptr<Printable_Opd>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;
};

class Label_TAC_Stmt : public TAC_Stmt {
    std::shared_ptr<Label_TAC_Opd> label;

  public:
    Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd>);

    void print(std::ostream &);

    std::shared_ptr<RTL_Code>
        build_rtl(std::shared_ptr<ProcSymbolTable>) override;

    std::shared_ptr<Label_TAC_Opd> get_label() { return label; }
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

    void remove_line(std::shared_ptr<TAC_Stmt>);

    std::vector<std::shared_ptr<TAC_Stmt>> get_code() { return tacStmts; }

    void print(std::ostream &);

    std::shared_ptr<RTL_Code> build_rtl(std::shared_ptr<ProcSymbolTable>);

    void delete_cfg();

    void build_cfg();

    void print_rtl(std::ostream &);

    void mark_leaders();

    void remove_unreachable();

    bool check_returns();
};
