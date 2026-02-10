#include "ast.hh"
#include "symtab.hh"

std::ostream &operator<<(std::ostream &os, std::shared_ptr<Ast> ast) {
    std::string level = "";
    ast->print(os, level);
    return os;
}

void Assignment_Stmt_Ast::print(std::ostream &os, std::string &level) {
    os << level << "Asgn:\n";
    level.push_back(SPACE);

    os << level << "LHS (";
    level.push_back(SPACE);
    lhs->print(os, level);
    level.pop_back();
    os << ")";
    level.pop_back();

    os << level << "RHS (";
    level.push_back(SPACE);
    rhs->print(os, level);
    level.pop_back();
    os << ")";
    level.pop_back();
    level.pop_back();
}

void Binary_Expr_Ast::print(std::ostream &os, std::string &level) const {
    std::string binary_expr_type_str;

    switch (get_binary_expr_type()) {
    case Binary_Expr_Type::ARITHMETIC:
        binary_expr_type_str = "Arith";
        break;
    case Binary_Expr_Type::BOOLEAN:
        binary_expr_type_str = "Condition";
        break;
    case Binary_Expr_Type::RELATIONAL:
        binary_expr_type_str = "Condition";
        break;
    default:
    }

    os << binary_expr_type_str << ": ";
    os << get_binary_op_str();
    os << "<" << get_type_str(type) << ">";
    level.push_back(SPACE);
    if (l_opd) {
        os << level;
        os << "L_Opd (";
        level.push_back(SPACE);
        l_opd->print(os, level);
        level.pop_back();
        os << ")";
    }
    if (r_opd) {
        os << level;
        os << "R_Opd (";
        level.push_back(SPACE);
        r_opd->print(os, level);
        level.pop_back();
        os << ")";
    }
}

Name_Expr_Ast::Name_Expr_Ast(std::shared_ptr<SymTabEntry> name) : name(name) {}

void Name_Expr_Ast::print(std::ostream &os, std::string &level) {
    os << "Name : " << name->get_name() << "<" << get_type_str(name->get_type()) << ">";
}

template <typename T> Number_Expr_Ast<T>::Number_Expr_Ast(Type type, T value) : type(type), value(value) {}

String_Expr_Ast::String_Expr_Ast(const std::string &s) : s(s) {}

void Read_Stmt_Ast::print(std::ostream &os, std::string &level) {
    os << level << "Read: ";
    child->print(os, level);
}

void Write_Stmt_Ast::print(std::ostream &os, std::string &level) {
    os << "Write: ";
    child->print(os, level);
}

Boolean_Expr_Ast::Boolean_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd,
                                   Boolean_Expr_Type boolean_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), boolean_expr_type(boolean_expr_type) {}

const Binary_Expr_Type &Boolean_Expr_Ast::get_binary_expr_type() const { return binary_expr_type; }

const Boolean_Expr_Type &Boolean_Expr_Ast::get_boolean_expr_type() const { return boolean_expr_type; }

const std::string &Boolean_Expr_Ast::get_binary_op_str() const {
    std::string boolean_expr_type_str;
    switch (get_boolean_expr_type()) {
    case Boolean_Expr_Type::AND:
        boolean_expr_type_str = "AND";
        break;
    case Boolean_Expr_Type::OR:
        boolean_expr_type_str = "OR";
        break;
    case Boolean_Expr_Type::NOT:
        boolean_expr_type_str = "NOT";
        break;
    default:
        break;
    };
    return boolean_expr_type_str;
}

Binary_Expr_Ast::Binary_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd)
    : l_opd(l_opd), r_opd(r_opd) {}

Arith_Expr_Ast::Arith_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd,
                               Arith_Expr_Type arith_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), arith_expr_type(arith_expr_type) {}

const Binary_Expr_Type &Arith_Expr_Ast::get_binary_expr_type() const { return binary_expr_type; }

const Arith_Expr_Type &Arith_Expr_Ast::get_arith_expr_type() const { return arith_expr_type; }

const std::string &Arith_Expr_Ast::get_binary_op_str() const {
    std::string arith_expr_type_str;
    switch (get_arith_expr_type()) {
    case Arith_Expr_Type::PLUS:
        arith_expr_type_str = "Plus";
        break;
    case Arith_Expr_Type::MINUS:
        arith_expr_type_str = "Minus";
        break;
    case Arith_Expr_Type::MULT:
        arith_expr_type_str = "Mult";
        break;
    case Arith_Expr_Type::DIV:
        arith_expr_type_str = "Div";
        break;
    case Arith_Expr_Type::UMINUS:
        arith_expr_type_str = "Uminus";
        break;
    default:
    };
    return arith_expr_type_str;
}

Relational_Expr_Ast::Relational_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd,
                                         Relational_Expr_Type relational_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), relational_expr_type(relational_expr_type) {}

const Relational_Expr_Type &Relational_Expr_Ast::get_relational_expr_type() const { return relational_expr_type; }

const Binary_Expr_Type &Relational_Expr_Ast::get_binary_expr_type() const { return binary_expr_type; }

const std::string &Relational_Expr_Ast::get_binary_op_str() const {
    std::string relational_expr_type_str;
    switch (get_relational_expr_type()) {
    case Relational_Expr_Type::GT:
        relational_expr_type_str = "GT";
        break;
    case Relational_Expr_Type::LT:
        relational_expr_type_str = "LT";
        break;
    case Relational_Expr_Type::EQ:
        relational_expr_type_str = "EQ";
        break;
    case Relational_Expr_Type::GE:
        relational_expr_type_str = "GE";
        break;
    case Relational_Expr_Type::LE:
        relational_expr_type_str = "LE";
        break;
    case Relational_Expr_Type::NE:
        relational_expr_type_str = "NE";
        break;
    default:
    };
    return relational_expr_type_str;
}

Conditional_Expr_Ast::Conditional_Expr_Ast(std::shared_ptr<Expression_Ast> condition,
                                           std::shared_ptr<Expression_Ast> true_part,
                                           std::shared_ptr<Expression_Ast> false_part)
    : condition(condition), true_part(true_part), false_part(false_part) {}

Assignment_Stmt_Ast::Assignment_Stmt_Ast(std::shared_ptr<Name_Expr_Ast> lhs, std::shared_ptr<Expression_Ast> rhs)
    : lhs(lhs), rhs(rhs) {}

Read_Stmt_Ast::Read_Stmt_Ast(std::shared_ptr<Name_Expr_Ast> name_expr_ast) : child(name_expr_ast) {}

void Sequence_Stmt_Ast::add_child(std::shared_ptr<Statement_Ast> stmt) { children.push_back(stmt); }

Sequence_Stmt_Ast::Sequence_Stmt_Ast() {}

Write_Stmt_Ast::Write_Stmt_Ast(std::shared_ptr<Expression_Ast> expr_ast) : child(expr_ast) {}
