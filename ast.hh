#pragma once

#include "symtab.hh"
#include "tac.hh"

#include <cmath>
#include <iomanip>
#include <iostream>
#include <memory>

/* Space for printing out in AST */
#define SPACE '\t'

/* Type of Binary Expression: `BOOLEAN`, `ARITHMETIC` or `RELATIONAL` */
enum class Binary_Expr_Type { BOOLEAN, ARITHMETIC, RELATIONAL };

// /* Type of Boolean Operation: `AND`, `OR` or `NOT` */
// enum class Boolean_Expr_Type { AND, OR, NOT };

// /* Type of Arithmetic Operation: `PLUS`, `MINUS`, `MULT`, `DIV` or `UMINUS`
// */ enum class Arith_Expr_Type { PLUS, MINUS, MULT, DIV, UMINUS };

// /* Type of Relational Operation: `GT`, `LT`, `EQ`, `LE` or `NE` */
// enum class Relational_Expr_Type { GT, LT, EQ, GE, LE, NE };

enum class Binary_Opd_Type {
    AND,
    OR,
    NOT,
    PLUS,
    MINUS,
    MULT,
    DIV,
    UMINUS,
    GT,
    LT,
    EQ,
    GE,
    LE,
    NE
};

inline std::string to_string(Binary_Opd_Type opd_type) {
    switch (opd_type) {
    case Binary_Opd_Type::AND:
        return "&&";
    case Binary_Opd_Type::OR:
        return "||";
    case Binary_Opd_Type::NOT:
        return "!";
    case Binary_Opd_Type::PLUS:
        return "+";
    case Binary_Opd_Type::MINUS:
    case Binary_Opd_Type::UMINUS:
        return "-";
    case Binary_Opd_Type::MULT:
        return "*";
    case Binary_Opd_Type::DIV:
        return "/";
    case Binary_Opd_Type::GT:
        return ">";
    case Binary_Opd_Type::LT:
        return "<";
    case Binary_Opd_Type::EQ:
        return "==";
    case Binary_Opd_Type::GE:
        return ">=";
    case Binary_Opd_Type::LE:
        return "<=";
    case Binary_Opd_Type::NE:
        return "!=";
    default:
        return "";
    }
}

using Boolean_Expr_Type = Binary_Opd_Type;
using Arith_Expr_Type = Binary_Opd_Type;
using Relational_Expr_Type = Binary_Opd_Type;

// ------------------------------ Main AST Class ------------------------------

/* Abstract class `Ast` for the AST nodes */
class Ast {
  protected:
    std::shared_ptr<TAC_Code> code;

  public:
    std::shared_ptr<TAC_Code> get_code() { return code; }
};

/* Abstract class for all the Expressions */
class Expression_Ast : public Ast {
  protected:
    /* Type of the expression */
    Type type;
    std::shared_ptr<Printable_Opd> place;

  public:
    /* Print to the given output stream */
    virtual void print(std::ostream &, std::string &) const = 0;

    virtual void build_tac(std::shared_ptr<ProcSymbolTable>) = 0;

    /* Gets the type of the Expression */
    Type get_type() { return type; }

    std::shared_ptr<Printable_Opd> get_place() { return place; }
};

/* Abstract class for names and constants */
class Base_Expr_Ast : public Expression_Ast {
  public:
    /* Print to the given output stream */
    virtual void print(std::ostream &, std::string &) const = 0;

    virtual void build_tac(std::shared_ptr<ProcSymbolTable>) = 0;
};

class Function_Call_Ast : public Base_Expr_Ast {
    std::shared_ptr<FuncEntry> func;

    std::vector<std::shared_ptr<Expression_Ast>> exprs;

  public:
    Function_Call_Ast(std::shared_ptr<FuncEntry>,
                      std::vector<std::shared_ptr<Expression_Ast>>);

    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for identifiers */
class Name_Expr_Ast : public Base_Expr_Ast {
    /* Pointer to the Symbol Table Entry of the identifier */
    std::shared_ptr<SymTabEntry> name;

  public:
    /* Constructor with the pointer to the Symbol Table Entry */
    Name_Expr_Ast(std::shared_ptr<SymTabEntry>);

    /* Returns the pointer to the Symbol Table Entry */
    std::shared_ptr<SymTabEntry> get_name();

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for Numeric constants */
template <typename T> class Number_Expr_Ast : public Base_Expr_Ast {
    T value;

  public:
    /* Constructor with the type and value of the numeric constant */
    Number_Expr_Ast(Type type, T value) : value(value) { this->type = type; }

    /* Print to the given output stream */
    void print(std::ostream &os, std::string &level) const {
        os << std::fixed << std::setprecision(2);
        os << "Num : " << value << "<" << type << ">";
    }

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for String constants */
class String_Expr_Ast : public Base_Expr_Ast {
    /* String of the string constant */
    std::string s;

    std::shared_ptr<Str_Const_TAC_Opd> const_opd;

  public:
    /* Constructor with the string */
    String_Expr_Ast(const std::string &);

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

// ------------------------------ BINARY ------------------------------

/* Class for all the Binary Expressions and the UMinus Expression */
class Binary_Expr_Ast : public Base_Expr_Ast {
    /* Enum `Binary_Expr_Type` that represents whether it is Arithmetic, Boolean
     * or Relational */
    Binary_Expr_Type binary_expr_type;

    /* Virtual function to return the type of expresion */
    virtual const Binary_Expr_Type &get_binary_expr_type() const = 0;

  protected:
    /* Left operand of the binary expression */
    const std::shared_ptr<Expression_Ast> l_opd;

    /* Right operand of the binary expression (can be null) */
    const std::shared_ptr<Expression_Ast> r_opd;

  public:
    /* Constructor with the left and right operands */
    Binary_Expr_Ast(std::shared_ptr<Expression_Ast>,
                    std::shared_ptr<Expression_Ast>);

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    /* Deleted virtual function to get the operand string */
    virtual std::string get_binary_op_str() const = 0;

    virtual void build_tac(std::shared_ptr<ProcSymbolTable>) = 0;
};

/* Class for Boolean Expressions */
class Boolean_Expr_Ast : public Binary_Expr_Ast {
    /* Binary Expression Type is `BOOLEAN` */
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::BOOLEAN;

    /* Boolean Expression Type representing the operation */
    const Boolean_Expr_Type boolean_expr_type;

    /* Gets the Binary Expression Type */
    const Binary_Expr_Type &get_binary_expr_type() const;

    /* Gets the Boolean Expression Type */
    const Boolean_Expr_Type &get_boolean_expr_type() const;

    /* Gets the Binary operator string */
    std::string get_binary_op_str() const;

  public:
    /* Constructor with the left and right operands and the operation */
    Boolean_Expr_Ast(std::shared_ptr<Expression_Ast>,
                     std::shared_ptr<Expression_Ast>, Boolean_Expr_Type);

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for Arithmetic Expressions */
class Arith_Expr_Ast : public Binary_Expr_Ast {
    /* Binary Expression Type is `ARITHMETIC` */
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::ARITHMETIC;

    /* Arithmetic Expression Type representing the operation */
    const Arith_Expr_Type arith_expr_type;

    /* Gets the Binary Expression Type */
    const Binary_Expr_Type &get_binary_expr_type() const;

    /* Gets the Arithmetic Expression Type */
    const Arith_Expr_Type &get_arith_expr_type() const;

    /* Gets the Binary operator string */
    std::string get_binary_op_str() const;

  public:
    /* Constructor with the left and right operands and the operation */
    Arith_Expr_Ast(std::shared_ptr<Expression_Ast>,
                   std::shared_ptr<Expression_Ast>, Arith_Expr_Type);

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for Relational Expressions */
class Relational_Expr_Ast : public Binary_Expr_Ast {
    /* Binary Expression Type is `RELATIONAL` */
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::RELATIONAL;

    /* Relational Expression Type representing the operation */
    const Relational_Expr_Type relational_expr_type;

    /* Gets the Relational Expression Type */
    const Binary_Expr_Type &get_binary_expr_type() const;

    /* Gets the Relational Expression Type */
    const Relational_Expr_Type &get_relational_expr_type() const;

    /* Gets the Relational operator string */
    std::string get_binary_op_str() const;

  public:
    /* Constructor with the left and right operands and the operation */
    Relational_Expr_Ast(std::shared_ptr<Expression_Ast>,
                        std::shared_ptr<Expression_Ast>, Relational_Expr_Type);

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

// ------------------------------ TERNARY ------------------------------

/* Abstract class for Ternary Expressions */
class Ternary_Expr_Ast : public Expression_Ast {
  public:
    /* Deleted function to print to the given output stream */
    virtual void print(std::ostream &, std::string &) const = 0;

    virtual void build_tac(std::shared_ptr<ProcSymbolTable>) = 0;

    // virtual ~Ternary_Expr_Ast();
};

/* Class for Ternary Conditional Expressions */
class Conditional_Expr_Ast : public Ternary_Expr_Ast {
    /* Condition of the conditional */
    const std::shared_ptr<Expression_Ast> condition;

    /* True part of the conditional expression */
    const std::shared_ptr<Expression_Ast> true_part;

    /* False part of the conditional expression */
    const std::shared_ptr<Expression_Ast> false_part;

  public:
    /* Constructor with the condition, true part and false part */
    Conditional_Expr_Ast(std::shared_ptr<Expression_Ast>,
                         std::shared_ptr<Expression_Ast>,
                         std::shared_ptr<Expression_Ast>);

    /* Prints to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

// ------------------------------ STATEMENT ------------------------------

/* Abstract class for all the statements */
class Statement_Ast : public Ast {
  protected:
    std::shared_ptr<Label_TAC_Opd> return_label;
  
  public:
    /* Deleted function to print to the given output stream */
    virtual void print(std::ostream &os, std::string &level) const = 0;

    virtual void build_tac(std::shared_ptr<ProcSymbolTable>) = 0;

    void set_return_label(std::shared_ptr<Label_TAC_Opd>);
};

class Function_Call_Stmt_Ast : public Statement_Ast {
    std::shared_ptr<Function_Call_Ast> func_call;

  public:
    Function_Call_Stmt_Ast(std::shared_ptr<Function_Call_Ast>);

    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

class Return_Stmt_Ast : public Statement_Ast {
    std::shared_ptr<Expression_Ast> expr;

  public:
    Return_Stmt_Ast(std::shared_ptr<Expression_Ast>);

    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for Assignment Statements */
class Assignment_Stmt_Ast : public Statement_Ast {
    /* The LHS of the assignment, has to be a Name Expression */
    const std::shared_ptr<Name_Expr_Ast> lhs;

    /* The RHS of the assignment */
    const std::shared_ptr<Expression_Ast> rhs;

  public:
    /* Constructor with the LHS and the RHS */
    Assignment_Stmt_Ast(std::shared_ptr<Name_Expr_Ast>,
                        std::shared_ptr<Expression_Ast>);

    /* Prints to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for Read Statements */
class Read_Stmt_Ast : public Statement_Ast {
    /* Operand for the Read Statement, has to be a name of the type int or float
     */
    const std::shared_ptr<Name_Expr_Ast> operand;

  public:
    /* Constructor with the name expression */
    Read_Stmt_Ast(std::shared_ptr<Name_Expr_Ast>);

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for Write Statements */
class Write_Stmt_Ast : public Statement_Ast {
    /* Operand for the Write Statement, should not be a bool */
    const std::shared_ptr<Expression_Ast> operand;

  public:
    /* Constructor with the operand */
    Write_Stmt_Ast(std::shared_ptr<Expression_Ast>);

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for sequence of statements */
class Sequence_Stmt_Ast : public Statement_Ast {
    /* Children of the Sequence, a vector of statements */
    std::vector<std::shared_ptr<Statement_Ast>> children;

  public:
    /* Constructor for Sequence Statements */
    Sequence_Stmt_Ast();

    /* Add child, from the Statement */
    void add_child(std::shared_ptr<Statement_Ast>);

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    void build_tac(std::shared_ptr<ProcSymbolTable>);
};

/* Class for do-while and while loop */
class Iteration_Stmt_Ast : public Statement_Ast {
  protected:
    /* Pointer to the condition */
    const std::shared_ptr<Expression_Ast> condition;

    /* Pointer to the body */
    const std::shared_ptr<Statement_Ast> body;

  public:
    Iteration_Stmt_Ast(std::shared_ptr<Expression_Ast>,
                       std::shared_ptr<Statement_Ast>);

    virtual void print(std::ostream &, std::string &) const = 0;

    virtual void build_tac(std::shared_ptr<ProcSymbolTable>) = 0;
};

/* Class for while loop */
class While_Loop_Ast : public Iteration_Stmt_Ast {
  public:
    While_Loop_Ast(std::shared_ptr<Expression_Ast>,
                   std::shared_ptr<Statement_Ast>);

    void print(std::ostream &, std::string &) const override;

    void build_tac(std::shared_ptr<ProcSymbolTable>) override;
};

/* Class for do-while loop */
class Do_While_Loop_Ast : public Iteration_Stmt_Ast {
  public:
    Do_While_Loop_Ast(std::shared_ptr<Expression_Ast>,
                      std::shared_ptr<Statement_Ast>);

    void print(std::ostream &, std::string &) const override;

    void build_tac(std::shared_ptr<ProcSymbolTable>) override;
};

/* Class for if-else statements */
class Selection_Stmt_Ast : public Statement_Ast {
    /* Pointer to the condition */
    const std::shared_ptr<Expression_Ast> condition;

    /* Pointer to the body */
    const std::shared_ptr<Statement_Ast> true_body;

    const std::optional<std::shared_ptr<Statement_Ast>> false_body;

  public:
    Selection_Stmt_Ast(std::shared_ptr<Expression_Ast>,
                       std::shared_ptr<Statement_Ast>);

    Selection_Stmt_Ast(std::shared_ptr<Expression_Ast>,
                       std::shared_ptr<Statement_Ast>,
                       std::shared_ptr<Statement_Ast>);

    void print(std::ostream &, std::string &) const override;

    void build_tac(std::shared_ptr<ProcSymbolTable>) override;
};

/* Class for the Functions */
class Func_Ast : public Ast {
    /* Pointer to the process symbol table */
    const std::shared_ptr<ProcSymbolTable> proc_table;

    /* Pointer to the `Sequence_Stmt_Ast` node */
    const std::shared_ptr<Sequence_Stmt_Ast> seq_ast;

    std::shared_ptr<RTL_Code> rtl_code;

    std::shared_ptr<ASM_Code> asm_code;

  public:
    /* Constructor with the Process Symbol Table and the `Sequence_Stmt_Ast`
     * node */
    Func_Ast(std::shared_ptr<ProcSymbolTable>,
             std::shared_ptr<Sequence_Stmt_Ast>);

    std::string get_name() const;

    /* Print to the given output stream */
    void print(std::ostream &, std::string &) const;

    void print_tac(std::ostream &os);

    void build_tac(std::shared_ptr<ProcSymbolTable>);

    void build_rtl();

    void print_rtl(std::ostream &os);

    void build_asm();

    std::shared_ptr<ProcSymbolTable> get_symtab() { return proc_table; }

    void print_asm(std::ostream &os);
};

/* Class for the Root of the AST */
class Root_Ast : public Ast {
    /* Vector of functions */
    std::vector<std::shared_ptr<Func_Ast>> funcs;

    /* Get the vector of shared pointers */
    const std::vector<std::shared_ptr<Func_Ast>> &get_funcs() const;

  public:
    /* Add function to the vector of functions */
    void add_func(std::shared_ptr<Func_Ast>);

    /* Print to the given output stream */
    void print(std::ostream &os, std::string &level) const;

    void build_tac(std::shared_ptr<GlobalSymbolTable>);

    void print_tac(std::ostream &os);

    void build_rtl();

    void print_rtl(std::ostream &os);

    void build_asm(std::shared_ptr<GlobalSymbolTable>);

    void print_asm(std::ostream &os);
};
