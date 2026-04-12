#include "ast.hh"
#include "symtab.hh"
#include "tac.hh"
#include "utils.hh"
#include "backward_flow.hh"

#include <algorithm>
#include <map>

// ------------------------------ Function_Call_Ast
// ------------------------------

Function_Call_Ast::Function_Call_Ast(
    std::shared_ptr<FuncEntry> func,
    std::vector<std::shared_ptr<Expression_Ast>> exprs)
    : func(func), exprs(exprs) {
    std::vector<Type> param_types = func->get_param_types();

    Error::semantic_check(exprs.size() == param_types.size(),
                          "Number of parameters in the function call does "
                          "not match with declaration");

    for (size_t idx = 0; idx < exprs.size() && idx < param_types.size(); idx++)
        Error::semantic_check(exprs[idx]->get_type() == param_types[idx],
                              "Types of parameter and argument do not match");

    type = func->get_return_type();
    func->set_call_made();
}

void Function_Call_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n";
    os << level << "FN CALL: " << func->get_name() << "(";
    level.push_back(SPACE);
    for (std::shared_ptr<Expression_Ast> expr : exprs) {
        os << "\n" << level;
        expr->print(os, level);
    }
    level.pop_back();
    os << ")";
}

// ------------------------------ Name_Expr_Ast
// ------------------------------

Name_Expr_Ast::Name_Expr_Ast(std::shared_ptr<SymTabEntry> name) : name(name) {
    type = name->get_type();
}

void Name_Expr_Ast::print(std::ostream &os, std::string &level) const {
    os << "Name: " << name->get_name() << "<" << name->get_type() << ">";
}

// ------------------------------ String_Expr_Ast ------------------------------

String_Expr_Ast::String_Expr_Ast(const std::string &s) : s(s) {
    this->type = Type::STRING;
}

void String_Expr_Ast::print(std::ostream &os, std::string &level) const {
    os << "String : " << s << "<string>";
}

// ------------------------------ Binary_Expr_Ast ------------------------------

Binary_Expr_Ast::Binary_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd,
                                 std::shared_ptr<Expression_Ast> r_opd)
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

// ------------------------------ Boolean_Expr_Ast
// ------------------------------

Boolean_Expr_Ast::Boolean_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd,
                                   std::shared_ptr<Expression_Ast> r_opd,
                                   Boolean_Expr_Type boolean_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), boolean_expr_type(boolean_expr_type) {
    // Check if the expression's operands are Boolean
    Error::semantic_check(l_opd->get_type() == Type::BOOL,
                          "Boolean: l_opd not bool");
    if (r_opd)
        Error::semantic_check(r_opd->get_type() == Type::BOOL,
                              "Boolean: r_opd not bool");
    type = Type::BOOL;
}

const Binary_Expr_Type &Boolean_Expr_Ast::get_binary_expr_type() const {
    return binary_expr_type;
}

const Boolean_Expr_Type &Boolean_Expr_Ast::get_boolean_expr_type() const {
    return boolean_expr_type;
}

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

Arith_Expr_Ast::Arith_Expr_Ast(std::shared_ptr<Expression_Ast> l_opd,
                               std::shared_ptr<Expression_Ast> r_opd,
                               Arith_Expr_Type arith_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd), arith_expr_type(arith_expr_type) {
    // Check if the expression's operands are both either INT or FLOAT only
    Error::semantic_check(l_opd->get_type() == Type::INT ||
                              l_opd->get_type() == Type::FLOAT,
                          "Arith: l_opd not numeric");
    if (r_opd) {
        Error::semantic_check(r_opd->get_type() == Type::INT ||
                                  r_opd->get_type() == Type::FLOAT,
                              "Relational: r_opd not numeric");
        Error::semantic_check(l_opd->get_type() == r_opd->get_type(),
                              "Relational: l_opd type != r_opd type");
    }

    type = l_opd->get_type();
}

const Binary_Expr_Type &Arith_Expr_Ast::get_binary_expr_type() const {
    return binary_expr_type;
}

const Arith_Expr_Type &Arith_Expr_Ast::get_arith_expr_type() const {
    return arith_expr_type;
}

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

// ------------------------------ Relational_Expr_Ast
// ------------------------------

Relational_Expr_Ast::Relational_Expr_Ast(
    std::shared_ptr<Expression_Ast> l_opd,
    std::shared_ptr<Expression_Ast> r_opd,
    Relational_Expr_Type relational_expr_type)
    : Binary_Expr_Ast(l_opd, r_opd),
      relational_expr_type(relational_expr_type) {

    // Check if the operands are both either INT or FLOAT
    Error::semantic_check(l_opd->get_type() == Type::INT ||
                              l_opd->get_type() == Type::FLOAT,
                          "Relational: l_opd not numeric");
    Error::semantic_check(r_opd->get_type() == Type::INT ||
                              r_opd->get_type() == Type::FLOAT,
                          "Relational: r_opd not numeric");
    Error::semantic_check(l_opd->get_type() == r_opd->get_type(),
                          "Relational: l_opd type != r_opd type");
    type = Type::BOOL;
}

const Relational_Expr_Type &
Relational_Expr_Ast::get_relational_expr_type() const {
    return relational_expr_type;
}

const Binary_Expr_Type &Relational_Expr_Ast::get_binary_expr_type() const {
    return binary_expr_type;
}

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

// ------------------------------ Conditional_Expr_Ast
// ------------------------------

Conditional_Expr_Ast::Conditional_Expr_Ast(
    std::shared_ptr<Expression_Ast> condition,
    std::shared_ptr<Expression_Ast> true_part,
    std::shared_ptr<Expression_Ast> false_part)
    : condition(condition), true_part(true_part), false_part(false_part) {
    // Check if the condition is boolean
    Error::semantic_check(condition->get_type() == Type::BOOL,
                          "condition type != bool");

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

// ------------------------------ Statement_Ast ------------------------------

void Statement_Ast::set_return_label(
    std::shared_ptr<Label_TAC_Opd> return_label) {
    this->return_label = return_label;
}

// ------------------------------ Function_Call_Stmt_Ast
// ------------------------------

Function_Call_Stmt_Ast::Function_Call_Stmt_Ast(
    std::shared_ptr<Function_Call_Ast> func_call)
    : func_call(func_call) {
    Error::semantic_check(func_call->get_type() == Type::VOID,
                          "Return value of a procedure ignored");
}

void Function_Call_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    func_call->print(os, level);
}

// ------------------------------ Return_Stmt_Ast ------------------------------

Return_Stmt_Ast::Return_Stmt_Ast(std::shared_ptr<Expression_Ast> expr)
    : expr(expr) {}

void Return_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Return: ";
    level.push_back(SPACE);
    expr->print(os, level);
    level.pop_back();
}

// ------------------------------ Assignment_Stmt_Ast
// ------------------------------

Assignment_Stmt_Ast::Assignment_Stmt_Ast(std::shared_ptr<Name_Expr_Ast> lhs,
                                         std::shared_ptr<Expression_Ast> rhs)
    : lhs(lhs), rhs(rhs) {
    // Check if the LHS and RHS are of the same type
    Error::semantic_check(lhs->get_type() == rhs->get_type(),
                          "Assignment: lhs type != rhs type");
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

Read_Stmt_Ast::Read_Stmt_Ast(std::shared_ptr<Name_Expr_Ast> name_expr_ast)
    : operand(name_expr_ast) {
    // Check if the read statement is taking only INT or FLOAT
    Error::semantic_check((name_expr_ast->get_type() == Type::INT) ||
                              (name_expr_ast->get_type() == Type::FLOAT),
                          "Read: var not numeric");
}

void Read_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Read: ";
    operand->print(os, level);
}

// ------------------------------ Write_Stmt_Ast ------------------------------

Write_Stmt_Ast::Write_Stmt_Ast(std::shared_ptr<Expression_Ast> expr_ast)
    : operand(expr_ast) {
    // Check if the write statement is not being given an BOOL or VOID
    Error::semantic_check(
        expr_ast->get_type() != Type::BOOL,
        "A bool variable is not allowed in a print statement");
    Error::semantic_check(
        expr_ast->get_type() != Type::VOID,
        "A void variable is not allowed in a print statement");
}

void Write_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Write: ";
    operand->print(os, level);
}

// ------------------------------ Sequence_Stmt_Ast
// ------------------------------

Sequence_Stmt_Ast::Sequence_Stmt_Ast() {}

void Sequence_Stmt_Ast::add_child(std::shared_ptr<Statement_Ast> stmt) {
    children.push_back(stmt);
}

void Sequence_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    // std::cout << "Reached here" << std::endl;
    for (const std::shared_ptr<Statement_Ast> &child : children) {
        child->print(os, level);
    }
}

// ----------------------------- Iteraion_Stmt_Ast -----------------------------

Iteration_Stmt_Ast::Iteration_Stmt_Ast(
    std::shared_ptr<Expression_Ast> condition,
    std::shared_ptr<Statement_Ast> body)
    : condition(condition), body(body) {
    Error::semantic_check(condition->get_type() == Type::BOOL,
                          "Iteration stmt condition is not a boolean");
}

While_Loop_Ast::While_Loop_Ast(std::shared_ptr<Expression_Ast> condition,
                               std::shared_ptr<Statement_Ast> body)
    : Iteration_Stmt_Ast(condition, body) {}

Do_While_Loop_Ast::Do_While_Loop_Ast(std::shared_ptr<Expression_Ast> condition,
                                     std::shared_ptr<Statement_Ast> body)
    : Iteration_Stmt_Ast(condition, body) {}

void While_Loop_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "While: ";
    level.push_back(SPACE);
    os << "\n" << level << "Condition (";
    level.push_back(SPACE);
    condition->print(os, level);
    os << ")";
    level.pop_back();
    os << "\n" << level << "Body (";
    level.push_back(SPACE);
    body->print(os, level);
    os << ")";
    level.pop_back();
    level.pop_back();
}

void Do_While_Loop_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "Do: ";
    level.push_back(SPACE);
    os << "\n" << level << "Body (";
    level.push_back(SPACE);
    body->print(os, level);
    os << ")";
    level.pop_back();
    os << "\n" << level << "While Condition (";
    level.push_back(SPACE);
    condition->print(os, level);
    os << ")";
    level.pop_back();
    level.pop_back();
}

// ---------------------------- Selection_Stmt_Ast ----------------------------

Selection_Stmt_Ast::Selection_Stmt_Ast(
    std::shared_ptr<Expression_Ast> condition,
    std::shared_ptr<Statement_Ast> true_body)
    : condition(condition), true_body(true_body), false_body(std::nullopt) {
    Error::semantic_check(condition->get_type() == Type::BOOL,
                          "Selection stmt condition is not bool");
}

Selection_Stmt_Ast::Selection_Stmt_Ast(
    std::shared_ptr<Expression_Ast> condition,
    std::shared_ptr<Statement_Ast> true_body,
    std::shared_ptr<Statement_Ast> false_body)
    : condition(condition), true_body(true_body), false_body(false_body) {
    Error::semantic_check(condition->get_type() == Type::BOOL,
                          "Selection stmt condition is not bool");
}

void Selection_Stmt_Ast::print(std::ostream &os, std::string &level) const {
    os << "\n" << level << "If: ";
    level.push_back(SPACE);
    os << "\n" << level << "Condition (";
    level.push_back(SPACE);
    condition->print(os, level);
    os << ")";
    level.pop_back();
    os << "\n" << level << "Then (";
    level.push_back(SPACE);
    true_body->print(os, level);
    os << ")";
    level.pop_back();
    if (false_body != std::nullopt) {
        os << "\n" << level << "Else (";
        level.push_back(SPACE);
        (*false_body)->print(os, level);
        os << ")";
        level.pop_back();
    }
    level.pop_back();
}

// ------------------------------ Func_Ast ------------------------------

Func_Ast::Func_Ast(std::shared_ptr<ProcSymbolTable> proc_table,
                   std::shared_ptr<Sequence_Stmt_Ast> seq_ast)
    : proc_table(proc_table), seq_ast(seq_ast) {}

std::string Func_Ast::get_name() const { return proc_table->get_name(); }

void Func_Ast::print(std::ostream &os, std::string &level) const {
    os << "**PROCEDURE: " << this->proc_table->get_name() << "\n";
    level.push_back(SPACE);
    os << level << "Return Type: <" << this->proc_table->get_return_type()
       << ">\n";
    os << level << "Formal Parameters: ";
    level.push_back(SPACE);
    for (const std::shared_ptr<SymTabEntry> &param :
         this->proc_table->get_params()) {
        os << "\n"
           << level << param->get_name() << "\tType:<" << param->get_type()
           << ">";
    }
    level.pop_back();
    os << "\n**BEGIN: Abstract Syntax Tree";
    // level.push_back(SPACE);
    seq_ast->print(os, level);
    level.pop_back();
    os << "\n**END: Abstract Syntax Tree\n";
}

void Func_Ast::build_cfg() {
    std::map<std::shared_ptr<Label_TAC_Opd>, std::shared_ptr<Label_TAC_Stmt>>
        label_map;

    std::vector<std::shared_ptr<TAC_Stmt>> curr_code = code->get_code();

    for (std::shared_ptr<TAC_Stmt> line : curr_code) {
        if (line->get_stmt_type() == TAC_Stmt_Type::LABEL) {
            std::shared_ptr<Label_TAC_Stmt> label_line =
                std::dynamic_pointer_cast<Label_TAC_Stmt>(line);
            label_map.insert({label_line->get_label(), label_line});
        }
    }

    std::shared_ptr<Goto_TAC_Stmt> goto_line;
    std::shared_ptr<If_Goto_TAC_Stmt> if_goto_line;


    for (std::vector<std::shared_ptr<TAC_Stmt>>::iterator iter =
             curr_code.begin();
         ; iter++) {
        switch ((*iter)->get_stmt_type()) {
        case TAC_Stmt_Type::GOTO:
            goto_line = std::dynamic_pointer_cast<Goto_TAC_Stmt>(*iter);
            goto_line->add_successor(label_map.at(goto_line->get_label()));
            label_map.at(goto_line->get_label())->add_predecessor(goto_line);
            break;

        case TAC_Stmt_Type::IF_GOTO:
            if_goto_line = std::dynamic_pointer_cast<If_Goto_TAC_Stmt>(*iter);
            if_goto_line->add_successor(
                label_map.at(if_goto_line->get_label()));
            label_map.at(if_goto_line->get_label())
                ->add_predecessor(if_goto_line);
            break;

        default:
            break;
        }

        if (iter != curr_code.end()) {
            (*iter)->add_successor(*(iter + 1));
            (*(iter + 1))->add_predecessor(*iter);
        } else {
            break;
        }
    }
}

void Func_Ast::optimize(std::shared_ptr<GlobalSymbolTable> symtab) {
    BackwardFlowAnalysis back(code, symtab);
}

// ------------------------------ Root_Ast ------------------------------

const std::vector<std::shared_ptr<Func_Ast>> &Root_Ast::get_funcs() const {
    return funcs;
}

void Root_Ast::add_func(std::shared_ptr<Func_Ast> func) {
    funcs.push_back(func);
}

void Root_Ast::build_cfg() {
    for (const std::shared_ptr<Func_Ast> &child : funcs) {
        child->build_cfg();
    }
}

void Root_Ast::optimize(std::shared_ptr<GlobalSymbolTable> symtab) {
    for (const std::shared_ptr<Func_Ast> &child : funcs) {
        child->optimize(symtab);
    }
    Variable_TAC_Opd::globals.clear();
}

void Root_Ast::print(std::ostream &os, std::string &level) const {
    std::vector<std::shared_ptr<Func_Ast>> funcs_copy = this->get_funcs();
    sort(funcs_copy.begin(), funcs_copy.end(), [](auto func1, auto func2) {
        return func1->get_name() < func2->get_name();
    });
    for (const std::shared_ptr<Func_Ast> &child : funcs_copy) {
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
