#include "tac.hh"
#include "ast.hh"

#include <cassert>

int Label_TAC_Opd::index = 0;

void TAC_Code::append(std::shared_ptr<TAC_Stmt> stmt) { tacStmts.push_back(stmt); }

void TAC_Code::append(std::shared_ptr<TAC_Code> code) {
    tacStmts.insert(tacStmts.end(), code->tacStmts.begin(), code->tacStmts.end());
}

bool TAC_Code::is_empty() { return tacStmts.size() == 0; }

Assign_TAC_Stmt::Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd> lOpd, std::shared_ptr<TAC_Expr> expr)
    : lOpd(lOpd), expr(expr) {}

Goto_TAC_Stmt::Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd> label) : label(label) {}

If_Goto_TAC_Stmt::If_Goto_TAC_Stmt(std::shared_ptr<Temporary_TAC_Opd> cond, std::shared_ptr<Label_TAC_Opd> label)
    : cond(cond), label(label) {}

IO_TAC_Stmt::IO_TAC_Stmt(IO_Opd opd, std::shared_ptr<Printable_Opd> var) : opd(opd), var(var) {}

Label_TAC_Stmt::Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd> label) : label(label) {}

Binary_TAC_Opd::Binary_TAC_Opd(std::shared_ptr<Printable_Opd> lOpd, std::shared_ptr<Printable_Opd> rOpd,
                               const Binary_Opd_Type &opd)
    : lOpd(lOpd), rOpd(rOpd), opd(opd) {}

Float_Const_TAC_Opd::Float_Const_TAC_Opd(double value) : value(value) {}

Int_Const_TAC_Opd::Int_Const_TAC_Opd(int value) : value(value) {}

Str_Const_TAC_Opd::Str_Const_TAC_Opd(std::string value) : value(value) {}

Label_TAC_Opd::Label_TAC_Opd() { label_index = index++; }

Temporary_TAC_Opd::Temporary_TAC_Opd(int temp_num) : temp_num(temp_num) {}

STemporary_TAC_Opd::STemporary_TAC_Opd(int temp_num) : Temporary_TAC_Opd(temp_num) {}

Variable_TAC_Opd::Variable_TAC_Opd(std::shared_ptr<SymTabEntry> entry) : entry(entry) {}

void Name_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    place = std::make_shared<Variable_TAC_Opd>(name);
    code = std::make_shared<TAC_Code>();
}

template <typename T> void Number_Expr_Ast<T>::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    // place = nullptr;
    if (type == Type::INT)
        place = std::make_shared<Int_Const_TAC_Opd>(value);
    else if (type == Type::FLOAT)
        place = std::make_shared<Float_Const_TAC_Opd>(value);
    code = std::make_shared<TAC_Code>();
}

template void Number_Expr_Ast<int>::build_tac(std::shared_ptr<ProcSymbolTable>);
template void Number_Expr_Ast<double>::build_tac(std::shared_ptr<ProcSymbolTable>);

void String_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    place = std::make_shared<Str_Const_TAC_Opd>(s);
    // place = nullptr;
    code = std::make_shared<TAC_Code>();
}

void Boolean_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    l_opd->build_tac(symtab);
    if (r_opd)
        r_opd->build_tac(symtab);
    place = symtab->getNewTemp();
    std::shared_ptr<Binary_TAC_Opd> opd;
    if (r_opd)
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), r_opd->get_place(), boolean_expr_type);
    else
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), nullptr, boolean_expr_type);
    code = std::make_shared<TAC_Code>();
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(std::dynamic_pointer_cast<TAC_LOpd>(place), opd);
    if (r_opd)
        code->append(l_opd->get_code(), r_opd->get_code(), stmt);
    else
        code->append(l_opd->get_code(), stmt);
}

void Arith_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    l_opd->build_tac(symtab);
    if (r_opd)
        r_opd->build_tac(symtab);
    place = symtab->getNewTemp();
    std::shared_ptr<Binary_TAC_Opd> opd;
    if (r_opd)
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), r_opd->get_place(), arith_expr_type);
    else
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), nullptr, arith_expr_type);
    code = std::make_shared<TAC_Code>();
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(std::dynamic_pointer_cast<TAC_LOpd>(place), opd);
    if (r_opd)
        code->append(l_opd->get_code(), r_opd->get_code(), stmt);
    else
        code->append(l_opd->get_code(), stmt);
}

void Relational_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    l_opd->build_tac(symtab);
    if (r_opd)
        r_opd->build_tac(symtab);
    place = symtab->getNewTemp();
    std::shared_ptr<Binary_TAC_Opd> opd;
    if (r_opd)
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), r_opd->get_place(), relational_expr_type);
    else
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), nullptr, relational_expr_type);
    code = std::make_shared<TAC_Code>();
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(std::dynamic_pointer_cast<TAC_LOpd>(place), opd);
    if (r_opd)
        code->append(l_opd->get_code(), r_opd->get_code(), stmt);
    else
        code->append(l_opd->get_code(), stmt);
}

void Conditional_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    condition->build_tac(symtab);
    true_part->build_tac(symtab);
    false_part->build_tac(symtab);
    place = symtab->getNewSTemp();

    auto temp1 = symtab->getNewTemp();

    auto false_label = std::make_shared<Label_TAC_Opd>();
    auto false_label_stmt = std::make_shared<Label_TAC_Stmt>(false_label);
    auto end_label = std::make_shared<Label_TAC_Opd>();
    auto end_label_stmt = std::make_shared<Label_TAC_Stmt>(end_label);

    auto neg_cond = std::make_shared<Binary_TAC_Opd>(condition->get_place(), nullptr, Binary_Opd_Type::NOT);

    auto negation_stmt = std::make_shared<Assign_TAC_Stmt>(temp1, neg_cond);

    auto if_goto = std::make_shared<If_Goto_TAC_Stmt>(temp1, false_label);

    auto assign_true =
        std::make_shared<Assign_TAC_Stmt>(std::dynamic_pointer_cast<TAC_LOpd>(place), true_part->get_place());

    auto goto_end = std::make_shared<Goto_TAC_Stmt>(end_label);

    auto assign_false =
        std::make_shared<Assign_TAC_Stmt>(std::dynamic_pointer_cast<TAC_LOpd>(place), false_part->get_place());

    code = std::make_shared<TAC_Code>();

    code->append(condition->get_code(), negation_stmt, if_goto, true_part->get_code(), assign_true, goto_end,
                 false_label_stmt, false_part->get_code(), assign_false, end_label_stmt);
}

void Assignment_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    lhs->build_tac(symtab);
    rhs->build_tac(symtab);
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(std::dynamic_pointer_cast<TAC_LOpd>(lhs->get_place()), rhs->get_place());
    code = std::make_shared<TAC_Code>();
    code->append(lhs->get_code(), rhs->get_code(), stmt);
}

void Read_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    operand->build_tac(symtab);
    std::shared_ptr<IO_TAC_Stmt> stmt = std::make_shared<IO_TAC_Stmt>(IO_Opd::READ, operand->get_place());
    code = std::make_shared<TAC_Code>();
    code->append(operand->get_code(), stmt);
}

void Write_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    operand->build_tac(symtab);
    assert(operand->get_place());
    std::shared_ptr<IO_TAC_Stmt> stmt = std::make_shared<IO_TAC_Stmt>(IO_Opd::WRITE, operand->get_place());
    code = std::make_shared<TAC_Code>();
    code->append(operand->get_code(), stmt);
}

void Sequence_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    code = std::make_shared<TAC_Code>();
    for (auto child : children) {
        child->build_tac(symtab);
        code->append(child->get_code());
    }
}

void Func_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    seq_ast->build_tac(symtab);
    code = seq_ast->get_code();
}

void Root_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    for (auto func : funcs)
        func->build_tac(func->get_symtab());
}
