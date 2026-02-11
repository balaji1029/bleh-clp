#pragma once

#include "symtab.hh"
#include <cmath>
#include <iomanip>
#include <iostream>
#include <type_traits>

enum class Binary_Expr_Type { BOOLEAN, ARITHMETIC, RELATIONAL };

enum class Boolean_Expr_Type { AND, OR, NOT };

enum class Arith_Expr_Type { PLUS, MINUS, MULT, DIV, UMINUS };

enum class Relational_Expr_Type { GT, LT, EQ, GE, LE, NE };

// ------------------------------ Main AST Class ------------------------------

class Ast {
  protected:
    static bool sa_parse;

  public:
    virtual ~Ast() = default;
    void semantic_check(bool err, const std::string &err_msg);
    void semantic_check(const std::string &err_msg);
    bool get_sa_parse();
};

class Expression_Ast : public Ast {
  protected:
    Type type;

  public:
    virtual void print(std::ostream &, std::string &) const = 0;
    Type get_type() { return type; }
};

class Base_Expr_Ast : public Expression_Ast {
  public:
    virtual void print(std::ostream &, std::string &) const = 0;
};

class Name_Expr_Ast : public Base_Expr_Ast {
    std::shared_ptr<SymTabEntry> name;

  public:
    Name_Expr_Ast(std::shared_ptr<SymTabEntry>);
    std::shared_ptr<SymTabEntry> get_name();
    void print(std::ostream &, std::string &) const;
};

template <typename T> class Number_Expr_Ast : public Base_Expr_Ast {

  public:
    T value;
    Number_Expr_Ast(Type type, T value) : value(value) { this->type = type; }
    void print(std::ostream &os, std::string &level) const {
        os << std::fixed << std::setprecision(2);
        os << "Num : " << value << "<" << get_type_str(type) << ">";
    }
};

class String_Expr_Ast : public Base_Expr_Ast {
    std::string s;

  public:
    String_Expr_Ast(const std::string &);
    void print(std::ostream &, std::string &) const;
};

// ------------------------------ BINARY ------------------------------

class Binary_Expr_Ast : public Base_Expr_Ast {
    Binary_Expr_Type binary_expr_type;
    virtual const Binary_Expr_Type &get_binary_expr_type() const = 0;

    const std::shared_ptr<Expression_Ast> l_opd;
    const std::shared_ptr<Expression_Ast> r_opd;

  public:
    Binary_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>);
    void print(std::ostream &, std::string &) const;
    virtual std::string get_binary_op_str() const = 0;
};

class Boolean_Expr_Ast : public Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::BOOLEAN;
    const Boolean_Expr_Type boolean_expr_type;
    const Binary_Expr_Type &get_binary_expr_type() const;
    const Boolean_Expr_Type &get_boolean_expr_type() const;
    std::string get_binary_op_str() const;

  public:
    Boolean_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>, Boolean_Expr_Type);
};

class Arith_Expr_Ast : public Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::ARITHMETIC;
    const Arith_Expr_Type arith_expr_type;
    const Binary_Expr_Type &get_binary_expr_type() const;
    const Arith_Expr_Type &get_arith_expr_type() const;
    std::string get_binary_op_str() const;

  public:
    Arith_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>, Arith_Expr_Type);
};

class Relational_Expr_Ast : public Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::RELATIONAL;
    const Relational_Expr_Type relational_expr_type;
    const Binary_Expr_Type &get_binary_expr_type() const;
    const Relational_Expr_Type &get_relational_expr_type() const;
    std::string get_binary_op_str() const;

  public:
    Relational_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>, Relational_Expr_Type);
};

// ------------------------------ TERNARY ------------------------------

class Ternary_Expr_Ast : public Expression_Ast {
  public:
    virtual void print(std::ostream &, std::string &) const = 0;
};

class Conditional_Expr_Ast : public Ternary_Expr_Ast {
    std::shared_ptr<Expression_Ast> condition;
    std::shared_ptr<Expression_Ast> true_part;
    std::shared_ptr<Expression_Ast> false_part;

  public:
    Conditional_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>,
                         std::shared_ptr<Expression_Ast>);
    void print(std::ostream &, std::string &) const;
};

// ------------------------------ STATEMENT ------------------------------

class Statement_Ast : public Ast {
  public:
    virtual void print(std::ostream &os, std::string &level) const = 0;
};

class Assignment_Stmt_Ast : public Statement_Ast {
    const std::shared_ptr<Name_Expr_Ast> lhs;
    const std::shared_ptr<Expression_Ast> rhs;

  public:
    Assignment_Stmt_Ast(std::shared_ptr<Name_Expr_Ast>, std::shared_ptr<Expression_Ast>);
    void print(std::ostream &, std::string &) const;
};

class Read_Stmt_Ast : public Statement_Ast {
    const std::shared_ptr<Name_Expr_Ast> child;

  public:
    Read_Stmt_Ast(std::shared_ptr<Name_Expr_Ast>);
    void print(std::ostream &, std::string &) const;
};

class Sequence_Stmt_Ast : public Statement_Ast {
    std::vector<std::shared_ptr<Statement_Ast>> children;

  public:
    Sequence_Stmt_Ast();
    void add_child(std::shared_ptr<Statement_Ast>);
    void print(std::ostream &, std::string &) const;
};

class Write_Stmt_Ast : public Statement_Ast {
    const std::shared_ptr<Expression_Ast> child;

  public:
    Write_Stmt_Ast(std::shared_ptr<Expression_Ast>);
    void print(std::ostream &, std::string &) const;
};

class Func_Ast : public Ast {
    std::shared_ptr<ProcSymbolTable> proc_table;
    std::shared_ptr<Sequence_Stmt_Ast> seq_ast;

  public:
    Func_Ast(std::shared_ptr<ProcSymbolTable>, std::shared_ptr<Sequence_Stmt_Ast>);
    void print(std::ostream &, std::string &) const;
};

class Root_Ast : public Ast {
    std::vector<std::shared_ptr<Func_Ast>> funcs;

  public:
    Root_Ast(bool);
    const std::vector<std::shared_ptr<Func_Ast>> &get_funcs() const;
    void add_func(std::shared_ptr<Func_Ast>);
    void print(std::ostream &os, std::string &level) const;
};
