#include "ast.hh"

std::ostream& operator<< (std::ostream& os, std::shared_ptr<Ast> ast) {
    std::string level = "";
    ast->print(os, level);
    return os;
}

void Assignment_Stmt_Ast::print(std::ostream& os, std::string& level) {
    os << level << "Asgn:\n";
    level.push_back('\t');

    os << level << "LHS (";
    level.push_back('\t');
    lhs->print(os, level);
    level.pop_back();
    os << ")";
    level.pop_back();

    os << level << "RHS (";
    level.push_back('\t');
    rhs->print(os, level);
    level.pop_back();
    os << ")";
    level.pop_back();
    level.pop_back();
}

void Binary_Expr_Ast::print(std::ostream& os, std::string& level) {
    std::string binary_expr_type;

    switch (get_binary_expr_type()) {
        Binary_Expr_Type::ARITHMETIC:
            binary_expr_type = "Arith";
            break;
        Binary_Expr_Type::BOOLEAN:
            binary_expr_type = "Condition";
            break;
        Binary_Expr_Type::RELATIONAL:
            binary_expr_type = "Condition";
            break;
        default:
    }

    os << "\n" << binary_expr_type << ": " << 
}

void Name_Expr_Ast::print(std::ostream& os, std::string& level) {
    os << "Name : " << name->get_name() << "<" << get_type_str(name->get_type()) << ">";
}

void Read_Stmt_Ast::print(std::ostream& os, std::string& level) {
    os << level << "Read: ";
    child->print(os, level);
}

void Write_Stmt_Ast::print(std::ostream& os,std::string& level) {
    os << "Write: ";
    child->print(os, level);
}


