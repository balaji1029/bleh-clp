#include "ast.hh"
#include "symtab.hh"
#include "utils.hh"

// ------------------------------ Name_Expr_Ast ------------------------------

Name_Expr_Ast::Name_Expr_Ast(std::shared_ptr<SymTabEntry> name) : name(name) { type = name->get_type(); }

void Name_Expr_Ast::print(std::ostream &os, std::string &level) const {
    os << "Name: " << name->get_name() << "<" << name->get_type() << ">";
}

// ------------------------------ String_Expr_Ast ------------------------------

String_Expr_Ast::String_Expr_Ast(const std::string &s) : s(s) { this->type = Type::STRING; }

void String_Expr_Ast::print(std::ostream &os, std::string &level) const { os << "String : " << s << "<string>"; }

// ------------------------------ Binary_Expr_Ast ------------------------------

Binary_Expr_Ast::Binary_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd)
    : l_opd(l_opd), r_opd(r_opd) {}

void Binary_Expr_Ast::print(std::ostream &os, std::string &level) const {
    std::string binary_expr_type_str;

    os << "\n" << level;

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
        break;
    }

    os << binary_expr_type_str << ": ";
    os << get_binary_op_str();
    os << "<" << type << ">";
    level.push_back(SPACE);
    if (l_opd) {
        os << "\n" << level;
        os << "L_Opd (";
        level.push_back(SPACE);
        l_opd->print(os, level);
        level.pop_back();
        os << ")";
    }
    if (r_opd) {
        os << "\n" << level;
        os << "R_Opd (";
        level.push_back(SPACE);
        r_opd->print(os, level);
        level.pop_back();
        os << ")";
    }
    level.pop_back();
}

// ------------------------------ Boolean_Expr_Ast ------------------------------

Boolean_Expr_Ast::Boolean_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd,
                                   Boolean_Expr_Type boolean_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), boolean_expr_type(boolean_expr_type) {
    // Check if the expression's operands are Boolean
    Error::semantic_check(l_opd->get_type() == Type::BOOL, "Boolean: l_opd not bool");
    if (r_opd)
        Error::semantic_check(r_opd->get_type() == Type::BOOL, "Boolean: r_opd not bool");
    type = Type::BOOL;
}

const Binary_Expr_Type &Boolean_Expr_Ast::get_binary_expr_type() const { return binary_expr_type; }

const Boolean_Expr_Type &Boolean_Expr_Ast::get_boolean_expr_type() const { return boolean_expr_type; }

std::string Boolean_Expr_Ast::get_binary_op_str() const {
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

// ------------------------------ Arith_Expr_Ast ------------------------------

Arith_Expr_Ast::Arith_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd,
                               Arith_Expr_Type arith_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), arith_expr_type(arith_expr_type) {
    // Check if the expression's operands are both either INT or FLOAT only
    Error::semantic_check(l_opd->get_type() == Type::INT || l_opd->get_type() == Type::FLOAT,
                          "Arith: l_opd not numeric");
    if (r_opd) {
        Error::semantic_check(r_opd->get_type() == Type::INT || r_opd->get_type() == Type::FLOAT,
                              "Relational: r_opd not numeric");
        Error::semantic_check(l_opd->get_type() == r_opd->get_type(), "Relational: l_opd type != r_opd type");
    }

    type = l_opd->get_type();
}

const Binary_Expr_Type &Arith_Expr_Ast::get_binary_expr_type() const { return binary_expr_type; }

const Arith_Expr_Type &Arith_Expr_Ast::get_arith_expr_type() const { return arith_expr_type; }

std::string Arith_Expr_Ast::get_binary_op_str() const {
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
        break;
    };
    return arith_expr_type_str;
}

// ------------------------------ Relational_Expr_Ast ------------------------------

Relational_Expr_Ast::Relational_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd, std::shared_ptr<Expression_Ast> r_opd,
                                         Relational_Expr_Type relational_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), relational_expr_type(relational_expr_type) {
    
    // Check if the operands are both either INT or FLOAT
    Error::semantic_check(l_opd->get_type() == Type::INT || l_opd->get_type() == Type::FLOAT,
                          "Relational: l_opd not numeric");
    Error::semantic_check(r_opd->get_type() == Type::INT || r_opd->get_type() == Type::FLOAT,
                          "Relational: r_opd not numeric");
    Error::semantic_check(l_opd->get_type() == r_opd->get_type(), "Relational: l_opd type != r_opd type");
    type = Type::BOOL;
}

const Relational_Expr_Type &Relational_Expr_Ast::get_relational_expr_type() const { return relational_expr_type; }

const Binary_Expr_Type &Relational_Expr_Ast::get_binary_expr_type() const { return binary_expr_type; }

std::string Relational_Expr_Ast::get_binary_op_str() const {
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
        break;
    };
    return relational_expr_type_str;
}

// ------------------------------ Conditional_Expr_Ast ------------------------------

Conditional_Expr_Ast::Conditional_Expr_Ast(std::shared_ptr<Expression_Ast> condition,
                                           std::shared_ptr<Expression_Ast> true_part,
                                           std::shared_ptr<Expression_Ast> false_part)
    : condition(condition), true_part(true_part), false_part(false_part) {
    // Check if the condition is boolean
    Error::semantic_check(condition->get_type() == Type::BOOL, "condition type != bool");

    // Check if the true part and the false part are of the same type
    Error::semantic_check(true_part->get_type() == false_part->get_type(),
                          "Condition: true part type != false part type");

    type = true_part->get_type();
}

void Conditional_Expr_Ast::print(std::ostream &os, std::string &level) const {
    condition->print(os, level);
    os << "\n" << level << "True_Part (";
    level.push_back(SPACE);
    true_part->print(os, level);
    level.pop_back();
    os << ")";
    os << "\n" << level << "False_Part(";
    level.push_back(SPACE);
    false_part->print(os, level);
    level.pop_back();
    os << ")";
}

// ------------------------------ Assignment_Stmt_Ast ------------------------------

Assignment_Stmt_Ast::Assignment_Stmt_Ast(std::shared_ptr<Name_Expr_Ast> lhs, std::shared_ptr<Expression_Ast> rhs)
    : lhs(lhs), rhs(rhs) {
    // Check if the LHS and RHS are of the same type
    Error::semantic_check(lhs->get_type() == rhs->get_type(), "Assignment: lhs type != rhs type");
}

void Assignment_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Asgn:\n";
    level.push_back(SPACE);

    os << level << "LHS (";
    level.push_back(SPACE);
    lhs->print(os, level);
    level.pop_back();
    os << ")";

    os << "\n" << level << "RHS (";
    level.push_back(SPACE);
    rhs->print(os, level);
    level.pop_back();
    os << ")";
    level.pop_back();
}

// ------------------------------ Read_Stmt_Ast ------------------------------

Read_Stmt_Ast::Read_Stmt_Ast(std::shared_ptr<Name_Expr_Ast> name_expr_ast) : operand(name_expr_ast) {
    // Check if the read statement is taking  only INT or FLOAT
    Error::semantic_check((name_expr_ast->get_type() == Type::INT) || (name_expr_ast->get_type() == Type::FLOAT),
                          "Read: var not numeric");
}

void Read_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Read: ";
    operand->print(os, level);
}

// ------------------------------ Write_Stmt_Ast ------------------------------

Write_Stmt_Ast::Write_Stmt_Ast(std::shared_ptr<Expression_Ast> expr_ast) : operand(expr_ast) {
    // Check if the write statement is being given an INT or VOID
    Error::semantic_check(expr_ast->get_type() != Type::INT, "A bool variable is not allowed in a print statement");
    Error::semantic_check(expr_ast->get_type() != Type::VOID, "A void variable is not allowed in a print statement");

}

void Write_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Write: ";
    operand->print(os, level);
}

// ------------------------------ Sequence_Stmt_Ast ------------------------------

Sequence_Stmt_Ast::Sequence_Stmt_Ast() {}

void Sequence_Stmt_Ast::add_child(std::shared_ptr<Statement_Ast> stmt) { children.push_back(stmt); }

void Sequence_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    // std::cout << "Reached here" << std::endl;
    for (std::shared_ptr<Statement_Ast> child : children) {
        child->print(os, level);
    }
}

// ------------------------------ Func_Ast ------------------------------

Func_Ast::Func_Ast(std::shared_ptr<ProcSymbolTable> proc_table, std::shared_ptr<Sequence_Stmt_Ast> seq_ast)
    : proc_table(proc_table), seq_ast(seq_ast) {}

void Func_Ast::print(std::ostream &os, std::string &level) const {
    os << "**PROCEDURE: " << this->proc_table->get_name() << "\n";
    level.push_back(SPACE);
    os << level << "Return Type: <" << this->proc_table->get_return_type() << ">\n";
    os << level << "Formal Parameters: ";
    level.push_back(SPACE);
    for (const auto &param : this->proc_table->get_params()) {
        os << "\n" << level << param->get_name() << "\tType:<" << param->get_type() << ">";
    }
    level.pop_back();
    os << "\n**BEGIN: Abstract Syntax Tree";
    // level.push_back(SPACE);
    seq_ast->print(os, level);
    // level.pop_back();
    os << "\n**END: Abstract Syntax Tree\n";
}

// ------------------------------ Root_Ast ------------------------------

const std::vector<std::shared_ptr<Func_Ast>> &Root_Ast::get_funcs() const { return funcs; }

void Root_Ast::add_func(std::shared_ptr<Func_Ast> func) { funcs.push_back(func); }

void Root_Ast::print(std::ostream &os, std::string &level) const {
    std::vector<std::shared_ptr<Func_Ast>> funcs = this->get_funcs();
    for (auto child : funcs) {
        child->print(os, level);
    }
}


// void Ast::Error::semantic_check(bool check, const std::string &err_msg) {
//     if (!sa_parse && !check) {
//         std::cerr << err_msg << std::endl;
//         exit(1);
//     }
// }

// void Ast::Error::semantic_check(const std::string &err_msg) {
//     if (!sa_parse) {
//         std::cerr << err_msg << std::endl;
//         exit(1);
//     }
// }

// Root_Ast::Root_Ast(bool saparse) { sa_parse = saparse; }

// bool Ast::get_sa_parse() { return sa_parse; }
