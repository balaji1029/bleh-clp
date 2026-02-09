#include <iostream>
#include "symtab.hh"

enum class Binary_Expr_Type {
    BOOLEAN,
    ARITHMETIC,
    RELATIONAL
};

class Ast {
public:
    virtual void print(std::ostream&, std::string&) = 0;
};

class Expression_Ast : Ast {
    Type type;
public:
    virtual void print(std::ostream&, std::string&) = 0;
};

class Base_Expr_Ast : Expression_Ast {

};

class Name_Expr_Ast : Base_Expr_Ast {
    std::shared_ptr<SymTabEntry> name;
public:
    std::shared_ptr<SymTabEntry> get_name();
    void print(std::ostream&, std::string&);
};

template <typename T>
class Number_Expr_Ast : Base_Expr_Ast {
    T value;
    Type type;
public:
    void print(std::ostream&, std::string&);
};

class String_Expr_Ast : Base_Expr_Ast {
    std::string s;
    Type type;
public:
    void print(std::ostream&, std::string&);
};

// ------------------------------ BINARY ------------------------------

class Binary_Expr_Ast : Base_Expr_Ast {
    Binary_Expr_Type binary_expr_type;
    virtual const Binary_Expr_Type& get_binary_expr_type() const = 0;
public:
    void print(std::ostream&, std::string&);
};


class Boolean_Expr_Ast : Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::BOOLEAN;
    const Binary_Expr_Type& get_binary_expr_type() const;
};

class Arith_Expr_Ast : Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::ARITHMETIC;
    const Binary_Expr_Type& get_binary_expr_type() const;
};

class Relational_Expr_Ast : Binary_Expr_Ast {
    const Binary_Expr_Type binary_expr_type = Binary_Expr_Type::RELATIONAL;
    const Binary_Expr_Type& get_binary_expr_type() const;
};

// ------------------------------ TERNARY ------------------------------

class Ternary_Expr_Ast : Expression_Ast {
    
};


class Conditional_Expr_Ast : Ternary_Expr_Ast {

};

class Unary_Expr_Ast : Expression_Ast {
    
};

// ------------------------------ UNARY ------------------------------

class UMinus_Ast : Unary_Expr_Ast {

};

class UMinus_Expr_Ast : Unary_Expr_Ast {

};

// ------------------------------ STATEMENT ------------------------------

class Statement : Ast {

};

class Assignment_Stmt_Ast : Statement {
    std::shared_ptr<Name_Expr_Ast> lhs;
    std::shared_ptr<Expression_Ast> rhs;
public:
    void print(std::ostream&, std::string&);
};

class Read_Stmt_Ast : Statement {
    std::shared_ptr<Name_Expr_Ast> child;
public:
    void print(std::ostream&, std::string&);
};

class Write_Stmt_Ast : Statement {
    std::shared_ptr<Name_Expr_Ast> child;
public:
    void print(std::ostream&, std::string&);
};
