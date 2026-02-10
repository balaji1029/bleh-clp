#include "symtab.hh"
#include <iostream>

enum class Binary_Expr_Type { BOOLEAN, ARITHMETIC, RELATIONAL };

enum class Boolean_Expr_Type { AND, OR, NOT };

enum class Arith_Expr_Type { PLUS, MINUS, MULT, DIV, UMINUS };

enum class Relational_Expr_Type { GT, LT, EQ, GE, LE, NE };

class Ast {
  public:
    virtual void print(std::ostream &, std::string &) = 0;
};

class Expression_Ast : public Ast {
  protected:
    Type type;

  public:
    virtual void print(std::ostream &, std::string &) = 0;
};

class Base_Expr_Ast : public Expression_Ast {};

class Name_Expr_Ast : public Base_Expr_Ast {
    std::shared_ptr<SymTabEntry> name;

  public:
    Name_Expr_Ast(std::shared_ptr<SymTabEntry>);
    std::shared_ptr<SymTabEntry> get_name();
    void print(std::ostream &, std::string &);
};

template <typename T> class Number_Expr_Ast : public Base_Expr_Ast {
    Type type;
    T value;

  public:
    Number_Expr_Ast(Type, T);
    void print(std::ostream &, std::string &);
};

class String_Expr_Ast : public Base_Expr_Ast {
    std::string s;
    Type type = Type::STRING;

  public:
  String_Expr_Ast(const std::string&);
    void print(std::ostream &, std::string &);
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
    virtual const std::string &get_binary_op_str() const = 0;
};

class Boolean_Expr_Ast : public Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::BOOLEAN;
    const Boolean_Expr_Type boolean_expr_type;
    const Binary_Expr_Type &get_binary_expr_type() const;
    const Boolean_Expr_Type &get_boolean_expr_type() const;
    const std::string &get_binary_op_str() const;

  public:
    Boolean_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>, Boolean_Expr_Type);
};

class Arith_Expr_Ast : public Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::ARITHMETIC;
    const Arith_Expr_Type arith_expr_type;
    const Binary_Expr_Type &get_binary_expr_type() const;
    const Arith_Expr_Type &get_arith_expr_type() const;
    const std::string &get_binary_op_str() const;

  public:
    Arith_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>, Arith_Expr_Type);
};

class Relational_Expr_Ast : public Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::RELATIONAL;
    const Relational_Expr_Type relational_expr_type;
    const Binary_Expr_Type &get_binary_expr_type() const;
    const Relational_Expr_Type &get_relational_expr_type() const;
    const std::string &get_binary_op_str() const;

  public:
    Relational_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>, Relational_Expr_Type);
};

// ------------------------------ TERNARY ------------------------------

class Ternary_Expr_Ast : public Expression_Ast {};

class Conditional_Expr_Ast : public Ternary_Expr_Ast {
    std::shared_ptr<Expression_Ast> condition;
    std::shared_ptr<Expression_Ast> true_part;
    std::shared_ptr<Expression_Ast> false_part;

  public:
    Conditional_Expr_Ast::Conditional_Expr_Ast(std::shared_ptr<Expression_Ast>, std::shared_ptr<Expression_Ast>,
                                               std::shared_ptr<Expression_Ast>);
};

// ------------------------------ UNARY ------------------------------

class Unary_Expr_Ast : public Expression_Ast {};

class UMinus_Ast : public Unary_Expr_Ast {};

class UMinus_Expr_Ast : public Unary_Expr_Ast {};

// ------------------------------ STATEMENT ------------------------------

class Statement_Ast : public Ast {};

class Assignment_Stmt_Ast : public Statement_Ast {
    const std::shared_ptr<Name_Expr_Ast> lhs;
    const std::shared_ptr<Expression_Ast> rhs;

  public:
    Assignment_Stmt_Ast(std::shared_ptr<Name_Expr_Ast>, std::shared_ptr<Expression_Ast>);
    void print(std::ostream &, std::string &);
};

class Read_Stmt_Ast : public Statement_Ast {
    const std::shared_ptr<Name_Expr_Ast> child;

  public:
    Read_Stmt_Ast(std::shared_ptr<Name_Expr_Ast>);
    void print(std::ostream &, std::string &);
};

class Sequence_Stmt_Ast : public Statement_Ast {
    std::vector<std::shared_ptr<Statement_Ast>> children;

  public:
    Sequence_Stmt_Ast();
    void add_child(std::shared_ptr<Statement_Ast>);
    void print(std::ostream &, std::string &);
};

class Write_Stmt_Ast : public Statement_Ast {
    const std::shared_ptr<Expression_Ast> child;

  public:
    Write_Stmt_Ast(std::shared_ptr<Expression_Ast>);
    void print(std::ostream &, std::string &);
};
