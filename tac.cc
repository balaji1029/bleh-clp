#include "tac.hh"
#include "ast.hh"
#include "backward_flow.hh"
#include "utils.hh"

#include <algorithm>
#include <cassert>
#include <map>

int Label_TAC_Opd::index = 0;

void TAC_Code::append(std::shared_ptr<TAC_Stmt> stmt) {
    tacStmts.push_back(stmt);
}

void TAC_Code::append(std::shared_ptr<TAC_Code> code) {
    tacStmts.insert(tacStmts.end(), code->tacStmts.begin(),
                    code->tacStmts.end());
}

bool TAC_Code::is_empty() { return tacStmts.size() == 0; }

void TAC_Code::remove_line(std::shared_ptr<TAC_Stmt> line) {
    auto iter = std::find(tacStmts.begin(), tacStmts.end(), line);
    if (iter != tacStmts.end()) {
        tacStmts.erase(iter);
    }
}

void TAC_Code::delete_cfg() {
    for (std::shared_ptr<TAC_Stmt> line : tacStmts) {
        line->delete_cfg();
    }
}

void TAC_Code::build_cfg() {
    std::map<std::shared_ptr<Label_TAC_Opd>, std::shared_ptr<Label_TAC_Stmt>>
        label_map;

    for (std::shared_ptr<TAC_Stmt> line : tacStmts) {
        if (line->get_stmt_type() == TAC_Stmt_Type::LABEL) {
            std::shared_ptr<Label_TAC_Stmt> label_line =
                std::dynamic_pointer_cast<Label_TAC_Stmt>(line);
            label_map.insert({label_line->get_label(), label_line});
        }
    }

    delete_cfg();

    std::shared_ptr<Goto_TAC_Stmt> goto_line;
    std::shared_ptr<If_Goto_TAC_Stmt> if_goto_line;

    for (size_t i = 0; i < tacStmts.size(); i++) {
        std::shared_ptr<TAC_Stmt> line = tacStmts[i];
        switch (line->get_stmt_type()) {
        case TAC_Stmt_Type::GOTO:
            goto_line = std::dynamic_pointer_cast<Goto_TAC_Stmt>(line);
            goto_line->add_successor(label_map.at(goto_line->get_label()));
            label_map.at(goto_line->get_label())->add_predecessor(goto_line);
            break;

        case TAC_Stmt_Type::IF_GOTO:
            if_goto_line = std::dynamic_pointer_cast<If_Goto_TAC_Stmt>(line);
            if_goto_line->add_successor(
                label_map.at(if_goto_line->get_label()));
            label_map.at(if_goto_line->get_label())
                ->add_predecessor(if_goto_line);
            break;

        default:
            break;
        }

        if (i + 1 < tacStmts.size()) {
            if (line->get_stmt_type() != TAC_Stmt_Type::GOTO) {
                line->add_successor(tacStmts[i + 1]);
                tacStmts[i + 1]->add_predecessor(line);
            }
        } else {
            break;
        }
    }
}

void TAC_Code::remove_unreachable() {
    if (is_empty())
        return;

    build_cfg();
    std::set<std::shared_ptr<TAC_Stmt>> lines_reachable;

    auto check = [&](auto self, std::shared_ptr<TAC_Stmt> line) -> void {
        if (lines_reachable.find(line) == lines_reachable.end()) {
            lines_reachable.insert(line);
            for (auto next_line : line->get_successors()) {
                self(self, next_line.lock());
            }
        }
    };

    check(check, tacStmts[0]);

    auto code_copy = tacStmts;

    for (auto line : code_copy) {
        if (lines_reachable.find(line) == lines_reachable.end()) {
            remove_line(line);
        }
    }
}

bool TAC_Code::check_returns() {
    for (auto iter = tacStmts.rbegin(); iter != tacStmts.rend(); iter++) {
        if ((*iter)->get_stmt_type() == TAC_Stmt_Type::LABEL) {
            auto next_iter = iter + 1;
            if (((*next_iter)->get_stmt_type() != TAC_Stmt_Type::GOTO) ||
                (std::dynamic_pointer_cast<Goto_TAC_Stmt>(*next_iter)
                     ->get_label() !=
                 std::dynamic_pointer_cast<Label_TAC_Stmt>(*iter)
                     ->get_label())) {
                return false;
            }
            break;
        }
    }
    return true;
}

void TAC_Stmt::mark_leader() {
    // std::cout << (int) stmt_type << " NOW" << std::endl;
    leader = true;
}

bool TAC_Stmt::is_leader() const {
    // if (leader)
    //     std::cout << (int) stmt_type << " YES" << std::endl;
    return leader;
}

void TAC_Stmt::add_successor(std::shared_ptr<TAC_Stmt> succ) {
    successors.insert(succ);
}

void TAC_Stmt::add_predecessor(std::shared_ptr<TAC_Stmt> pred) {
    predecessors.insert(pred);
}

const std::set<std::weak_ptr<TAC_Stmt>, WeakPtrComp> &
TAC_Stmt::get_successors() {
    return successors;
}

const std::set<std::weak_ptr<TAC_Stmt>, WeakPtrComp> &
TAC_Stmt::get_predecessors() {
    return predecessors;
}

void TAC_Stmt::delete_cfg() {
    predecessors.clear();
    successors.clear();
}

const std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> &
TAC_Stmt::get_gen() {
    return gen;
}

const std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> &
TAC_Stmt::get_kill() {
    return kill;
}

Function_Call_TAC_Stmt::Function_Call_TAC_Stmt(
    std::shared_ptr<Function_Call_TAC_Opd> opd)
    : TAC_Stmt(TAC_Stmt_Type::CALL), opd(opd) {
    gen = opd->get_gen();
}

Return_TAC_Stmt::Return_TAC_Stmt(std::shared_ptr<Variable_TAC_Opd> opd)
    : TAC_Stmt(TAC_Stmt_Type::RETURN), opd(opd) {
    gen = opd->get_gen();
}

Assign_TAC_Stmt::Assign_TAC_Stmt(std::shared_ptr<TAC_LOpd> lOpd,
                                 std::shared_ptr<TAC_Expr> expr)
    : TAC_Stmt(TAC_Stmt_Type::ASSIGN), lOpd(lOpd), expr(expr) {
    kill.insert(lOpd->get_ptr());
    gen = expr->get_gen();
}

Goto_TAC_Stmt::Goto_TAC_Stmt(std::shared_ptr<Label_TAC_Opd> label)
    : TAC_Stmt(TAC_Stmt_Type::GOTO), label(label) {}

If_Goto_TAC_Stmt::If_Goto_TAC_Stmt(std::shared_ptr<Printable_Opd> cond,
                                   std::shared_ptr<Label_TAC_Opd> label)
    : TAC_Stmt(TAC_Stmt_Type::IF_GOTO), cond(cond), label(label) {
    gen = cond->get_gen();
}

IO_TAC_Stmt::IO_TAC_Stmt(IO_Opd opd, std::shared_ptr<Printable_Opd> var)
    : TAC_Stmt(TAC_Stmt_Type::IO), opd(opd), var(var) {
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> genset =
        var->get_gen();
    switch (opd) {
    case IO_Opd::READ:
        kill.insert(genset.begin(), genset.end());
        break;
    case IO_Opd::WRITE:
        gen.insert(genset.begin(), genset.end());
        break;
    default:
        break;
    }
}

Label_TAC_Stmt::Label_TAC_Stmt(std::shared_ptr<Label_TAC_Opd> label)
    : TAC_Stmt(TAC_Stmt_Type::LABEL), label(label) {}

void TAC_LOpd::set_type(Type type) { this->type = type; }

Type TAC_LOpd::get_type() { return type; }

Binary_TAC_Opd::Binary_TAC_Opd(std::shared_ptr<Printable_Opd> lOpd,
                               std::shared_ptr<Printable_Opd> rOpd,
                               const Binary_Opd_Type &opd,
                               std::shared_ptr<Temporary_TAC_Opd> temp)
    : TAC_Expr(TAC_Opd_Type::BINARY), lOpd(lOpd), rOpd(rOpd), opd(opd),
      temp(temp) {}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Binary_TAC_Opd::get_gen() {
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> gen_set;
    if ((lOpd->get_opd_type() == TAC_Opd_Type::VAR) ||
        lOpd->get_opd_type() == TAC_Opd_Type::TEMP) {
        gen_set.insert(std::dynamic_pointer_cast<TAC_LOpd>(lOpd)->get_ptr());
    }

    if (rOpd && ((rOpd->get_opd_type() == TAC_Opd_Type::VAR) ||
                 (rOpd->get_opd_type() == TAC_Opd_Type::TEMP))) {
        gen_set.insert(std::dynamic_pointer_cast<TAC_LOpd>(rOpd)->get_ptr());
    }

    return gen_set;
}

Float_Const_TAC_Opd::Float_Const_TAC_Opd(double value)
    : TAC_Expr(TAC_Opd_Type::FLOAT), value(value) {}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Float_Const_TAC_Opd::get_gen() {
    return std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>();
}

Int_Const_TAC_Opd::Int_Const_TAC_Opd(int value)
    : TAC_Expr(TAC_Opd_Type::INT), value(value) {}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Int_Const_TAC_Opd::get_gen() {
    return std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>();
}

Str_Const_TAC_Opd::Str_Const_TAC_Opd(std::string value)
    : TAC_Expr(TAC_Opd_Type::STRING), value(value) {}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Str_Const_TAC_Opd::get_gen() {
    return std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>();
}

Label_TAC_Opd::Label_TAC_Opd() : TAC_Opd(TAC_Opd_Type::LABEL) {
    label_index = index++;
}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Label_TAC_Opd::get_gen() {
    return std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>();
}

Temporary_TAC_Opd::Temporary_TAC_Opd(int temp_num)
    : TAC_Expr(TAC_Opd_Type::TEMP), temp_num(temp_num) {}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Temporary_TAC_Opd::get_gen() {
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> gen_set;
    gen_set.insert(get_ptr());
    return gen_set;
}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
    Variable_TAC_Opd::globals = {};

Variable_TAC_Opd::Variable_TAC_Opd(std::shared_ptr<SymTabEntry> entry)
    : TAC_Expr(TAC_Opd_Type::VAR), entry(entry) {
    // if (entry->is_global())
    //     globals.insert(shared_from_this());
}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Variable_TAC_Opd::get_gen() {
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> gen_set;
    gen_set.insert(get_ptr());
    return gen_set;
}

Function_Call_TAC_Opd::Function_Call_TAC_Opd(
    std::shared_ptr<FuncEntry> entry,
    std::vector<std::shared_ptr<Printable_Opd>> args)
    : TAC_Expr(TAC_Opd_Type::CALL), entry(entry), args(args) {}

std::set<std::variant<std::shared_ptr<SymTabEntry>, int>>
Function_Call_TAC_Opd::get_gen() {
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> gen_set;
    for (std::shared_ptr<Printable_Opd> arg : args) {
        std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> tempset =
            arg->get_gen();
        gen_set.insert(tempset.begin(), tempset.end());
    }
    gen_set.insert(Variable_TAC_Opd::globals.begin(),
                   Variable_TAC_Opd::globals.end());
    return gen_set;
}

void Function_Call_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    if (func->get_return_type() != Type::VOID) {
        place = symtab->getNewTemp();
    }
    std::vector<std::shared_ptr<Printable_Opd>> args;

    code = std::make_shared<TAC_Code>();
    for (std::shared_ptr<Expression_Ast> expr : exprs) {
        expr->build_tac(symtab);
        args.push_back(expr->get_place());
        code->append(expr->get_code());
    }

    std::shared_ptr<Function_Call_TAC_Opd> func_call_opd =
        std::make_shared<Function_Call_TAC_Opd>(func, args);

    std::shared_ptr<TAC_Stmt> func_call_stmt;

    if (func->get_return_type() != Type::VOID) {
        std::shared_ptr<TAC_LOpd> lOpd =
            std::dynamic_pointer_cast<TAC_LOpd>(place);
        lOpd->set_type(func->get_return_type());
        func_call_stmt = std::make_shared<Assign_TAC_Stmt>(lOpd, func_call_opd);
    } else {
        func_call_stmt =
            std::make_shared<Function_Call_TAC_Stmt>(func_call_opd);
    }

    code->append(func_call_stmt);
}

void Name_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<Variable_TAC_Opd> var_tac =
        std::make_shared<Variable_TAC_Opd>(name);
    if (var_tac->is_global())
        Variable_TAC_Opd::globals.insert(var_tac->get_ptr());
    var_tac->set_type(get_type());
    place = var_tac;
    code = std::make_shared<TAC_Code>();
}

template <typename T>
void Number_Expr_Ast<T>::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    // place = nullptr;
    if (type == Type::INT)
        place = std::make_shared<Int_Const_TAC_Opd>(value);
    else if (type == Type::FLOAT)
        place = std::make_shared<Float_Const_TAC_Opd>(value);
    code = std::make_shared<TAC_Code>();
}

template void Number_Expr_Ast<int>::build_tac(std::shared_ptr<ProcSymbolTable>);
template void
    Number_Expr_Ast<double>::build_tac(std::shared_ptr<ProcSymbolTable>);

void String_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    place = std::make_shared<Str_Const_TAC_Opd>(s);
    // place = nullptr;
    code = std::make_shared<TAC_Code>();
}

void Boolean_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    l_opd->build_tac(symtab);
    if (r_opd)
        r_opd->build_tac(symtab);
    std::shared_ptr<Temporary_TAC_Opd> temp1 = symtab->getNewTemp();
    temp1->set_type(get_type());
    place = temp1;
    std::shared_ptr<Binary_TAC_Opd> opd;
    if (r_opd)
        opd = std::make_shared<Binary_TAC_Opd>(
            l_opd->get_place(), r_opd->get_place(), boolean_expr_type, temp1);
    else
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), nullptr,
                                               boolean_expr_type, temp1);
    code = std::make_shared<TAC_Code>();
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(temp1, opd);
    if (r_opd)
        code->append(l_opd->get_code(), r_opd->get_code(), stmt);
    else
        code->append(l_opd->get_code(), stmt);
}

void Arith_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    l_opd->build_tac(symtab);
    if (r_opd)
        r_opd->build_tac(symtab);
    std::shared_ptr<Temporary_TAC_Opd> temp1 = symtab->getNewTemp();
    temp1->set_type(get_type());
    place = temp1;
    std::shared_ptr<Binary_TAC_Opd> opd;
    if (r_opd)
        opd = std::make_shared<Binary_TAC_Opd>(
            l_opd->get_place(), r_opd->get_place(), arith_expr_type, temp1);
    else
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), nullptr,
                                               arith_expr_type, temp1);
    code = std::make_shared<TAC_Code>();
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(temp1, opd);
    if (r_opd)
        code->append(l_opd->get_code(), r_opd->get_code(), stmt);
    else
        code->append(l_opd->get_code(), stmt);
}

void Relational_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    l_opd->build_tac(symtab);
    if (r_opd)
        r_opd->build_tac(symtab);
    std::shared_ptr<Temporary_TAC_Opd> temp1 = symtab->getNewTemp();
    temp1->set_type(get_type());
    place = temp1;
    std::shared_ptr<Binary_TAC_Opd> opd;
    if (r_opd)
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(),
                                               r_opd->get_place(),
                                               relational_expr_type, temp1);
    else
        opd = std::make_shared<Binary_TAC_Opd>(l_opd->get_place(), nullptr,
                                               relational_expr_type, temp1);
    code = std::make_shared<TAC_Code>();
    std::shared_ptr<Assign_TAC_Stmt> stmt =
        std::make_shared<Assign_TAC_Stmt>(temp1, opd);
    if (r_opd)
        code->append(l_opd->get_code(), r_opd->get_code(), stmt);
    else
        code->append(l_opd->get_code(), stmt);
}

void Conditional_Expr_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    condition->build_tac(symtab);

    std::shared_ptr<Variable_TAC_Opd> stemp = symtab->getNewSTemp(get_type());
    stemp->set_type(get_type());
    place = stemp;

    std::shared_ptr<Label_TAC_Opd> false_label =
        std::make_shared<Label_TAC_Opd>();
    std::shared_ptr<Label_TAC_Opd> end_label =
        std::make_shared<Label_TAC_Opd>();

    true_part->build_tac(symtab);
    false_part->build_tac(symtab);

    std::shared_ptr<Label_TAC_Stmt> false_label_stmt =
        std::make_shared<Label_TAC_Stmt>(false_label);
    std::shared_ptr<Label_TAC_Stmt> end_label_stmt =
        std::make_shared<Label_TAC_Stmt>(end_label);

    std::shared_ptr<Temporary_TAC_Opd> temp1 = symtab->getNewTemp();
    temp1->set_type(Type::BOOL);

    std::shared_ptr<Binary_TAC_Opd> neg_cond = std::make_shared<Binary_TAC_Opd>(
        condition->get_place(), nullptr, Binary_Opd_Type::NOT, temp1);

    std::shared_ptr<Assign_TAC_Stmt> negation_stmt =
        std::make_shared<Assign_TAC_Stmt>(temp1, neg_cond);

    std::shared_ptr<If_Goto_TAC_Stmt> if_goto =
        std::make_shared<If_Goto_TAC_Stmt>(temp1, false_label);

    std::shared_ptr<Assign_TAC_Stmt> assign_true =
        std::make_shared<Assign_TAC_Stmt>(
            std::dynamic_pointer_cast<TAC_LOpd>(place), true_part->get_place());

    std::shared_ptr<Goto_TAC_Stmt> goto_end =
        std::make_shared<Goto_TAC_Stmt>(end_label);

    std::shared_ptr<Assign_TAC_Stmt> assign_false =
        std::make_shared<Assign_TAC_Stmt>(
            std::dynamic_pointer_cast<TAC_LOpd>(place),
            false_part->get_place());

    code = std::make_shared<TAC_Code>();

    code->append(condition->get_code(), negation_stmt, if_goto,
                 true_part->get_code(), assign_true, goto_end, false_label_stmt,
                 false_part->get_code(), assign_false, end_label_stmt);
}

void Function_Call_Stmt_Ast::build_tac(
    std::shared_ptr<ProcSymbolTable> symtab) {
    func_call->build_tac(symtab);
    code = std::make_shared<TAC_Code>();
    code->append(func_call->get_code());
}

void Return_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    std::shared_ptr<Variable_TAC_Opd> return_tac_opd =
        symtab->get_return_tac_opd();
    expr->build_tac(symtab);

    std::shared_ptr<Assign_TAC_Stmt> assign_stmt =
        std::make_shared<Assign_TAC_Stmt>(return_tac_opd, expr->get_place());

    std::shared_ptr<Goto_TAC_Stmt> goto_ret =
        std::make_shared<Goto_TAC_Stmt>(return_label);

    code = std::make_shared<TAC_Code>();
    code->append(expr->get_code(), assign_stmt, goto_ret);
}

void Assignment_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    lhs->build_tac(symtab);
    rhs->build_tac(symtab);
    std::shared_ptr<Assign_TAC_Stmt> stmt = std::make_shared<Assign_TAC_Stmt>(
        std::dynamic_pointer_cast<TAC_LOpd>(lhs->get_place()),
        rhs->get_place());
    code = std::make_shared<TAC_Code>();
    code->append(lhs->get_code(), rhs->get_code(), stmt);
}

void Read_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    operand->build_tac(symtab);
    std::shared_ptr<IO_TAC_Stmt> stmt =
        std::make_shared<IO_TAC_Stmt>(IO_Opd::READ, operand->get_place());
    code = std::make_shared<TAC_Code>();
    code->append(operand->get_code(), stmt);
}

void Write_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    operand->build_tac(symtab);
    assert(operand->get_place());
    std::shared_ptr<IO_TAC_Stmt> stmt =
        std::make_shared<IO_TAC_Stmt>(IO_Opd::WRITE, operand->get_place());
    code = std::make_shared<TAC_Code>();
    code->append(operand->get_code(), stmt);
}

void Sequence_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    code = std::make_shared<TAC_Code>();
    for (const std::shared_ptr<Statement_Ast> &child : children) {
        child->set_return_label(return_label);
        child->build_tac(symtab);
        code->append(child->get_code());
    }
}

void While_Loop_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    condition->build_tac(symtab);
    body->set_return_label(return_label);
    body->build_tac(symtab);

    std::shared_ptr<Temporary_TAC_Opd> temp1 = symtab->getNewTemp();
    temp1->set_type(Type::BOOL);

    std::shared_ptr<Binary_TAC_Opd> neg_cond = std::make_shared<Binary_TAC_Opd>(
        condition->get_place(), nullptr, Binary_Opd_Type::NOT, temp1);

    std::shared_ptr<Assign_TAC_Stmt> negation_stmt =
        std::make_shared<Assign_TAC_Stmt>(temp1, neg_cond);

    std::shared_ptr<Label_TAC_Opd> begin_label =
        std::make_shared<Label_TAC_Opd>();

    std::shared_ptr<Label_TAC_Stmt> begin_label_stmt =
        std::make_shared<Label_TAC_Stmt>(begin_label);

    std::shared_ptr<Goto_TAC_Stmt> goto_begin =
        std::make_shared<Goto_TAC_Stmt>(begin_label);

    std::shared_ptr<Label_TAC_Opd> end_label =
        std::make_shared<Label_TAC_Opd>();

    std::shared_ptr<Label_TAC_Stmt> end_label_stmt =
        std::make_shared<Label_TAC_Stmt>(end_label);

    std::shared_ptr<If_Goto_TAC_Stmt> if_goto =
        std::make_shared<If_Goto_TAC_Stmt>(temp1, end_label);

    code = std::make_shared<TAC_Code>();
    code->append(begin_label_stmt, condition->get_code(), negation_stmt,
                 if_goto, body->get_code(), goto_begin, end_label_stmt);
}

void Do_While_Loop_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    body->set_return_label(return_label);
    body->build_tac(symtab);
    condition->build_tac(symtab);

    std::shared_ptr<Label_TAC_Opd> begin_label =
        std::make_shared<Label_TAC_Opd>();

    std::shared_ptr<Label_TAC_Stmt> begin_label_stmt =
        std::make_shared<Label_TAC_Stmt>(begin_label);

    std::shared_ptr<If_Goto_TAC_Stmt> if_goto =
        std::make_shared<If_Goto_TAC_Stmt>(condition->get_place(), begin_label);

    code = std::make_shared<TAC_Code>();
    code->append(begin_label_stmt, body->get_code(), condition->get_code(),
                 if_goto);
}

void Selection_Stmt_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    condition->build_tac(symtab);
    true_body->set_return_label(return_label);
    true_body->build_tac(symtab);

    std::shared_ptr<Temporary_TAC_Opd> temp1 = symtab->getNewTemp();
    temp1->set_type(Type::BOOL);

    std::shared_ptr<Binary_TAC_Opd> neg_cond = std::make_shared<Binary_TAC_Opd>(
        condition->get_place(), nullptr, Binary_Opd_Type::NOT, temp1);

    std::shared_ptr<Assign_TAC_Stmt> negation_stmt =
        std::make_shared<Assign_TAC_Stmt>(temp1, neg_cond);

    std::shared_ptr<Label_TAC_Opd> end_label =
        std::make_shared<Label_TAC_Opd>();

    std::shared_ptr<Label_TAC_Stmt> end_label_stmt =
        std::make_shared<Label_TAC_Stmt>(end_label);

    std::shared_ptr<Goto_TAC_Stmt> goto_end =
        std::make_shared<Goto_TAC_Stmt>(end_label);

    std::shared_ptr<If_Goto_TAC_Stmt> if_goto;

    code = std::make_shared<TAC_Code>();

    if (false_body != std::nullopt) {
        std::shared_ptr<Label_TAC_Opd> false_label =
            std::make_shared<Label_TAC_Opd>();
        if_goto = std::make_shared<If_Goto_TAC_Stmt>(temp1, false_label);
        std::shared_ptr<Label_TAC_Stmt> false_label_stmt =
            std::make_shared<Label_TAC_Stmt>(false_label);
        (*false_body)->set_return_label(return_label);
        (*false_body)->build_tac(symtab);
        code->append(condition->get_code(), negation_stmt, if_goto,
                     true_body->get_code(), goto_end);
        code->append(false_label_stmt, (*false_body)->get_code());
    } else {
        if_goto = std::make_shared<If_Goto_TAC_Stmt>(temp1, end_label);
        code->append(condition->get_code(), negation_stmt, if_goto,
                     true_body->get_code(), goto_end);
    }
    code->append(end_label_stmt);
}

void Func_Ast::build_tac(std::shared_ptr<ProcSymbolTable> symtab) {
    code = std::make_shared<TAC_Code>();
    if (proc_table->is_phantom())
        return;
    if (proc_table->get_return_type() != Type::VOID) {
        std::shared_ptr<Label_TAC_Opd> return_label =
            *(symtab->get_return_label());
        std::shared_ptr<Variable_TAC_Opd> return_opd =
            symtab->get_return_tac_opd();

        std::shared_ptr<Label_TAC_Stmt> end_label =
            std::make_shared<Label_TAC_Stmt>(return_label);
        std::shared_ptr<Return_TAC_Stmt> return_stmt =
            std::make_shared<Return_TAC_Stmt>(return_opd);

        seq_ast->set_return_label(return_label);
        seq_ast->build_tac(symtab);
        code->append(seq_ast->get_code(), end_label, return_stmt);
    } else {
        seq_ast->build_tac(symtab);
        code = seq_ast->get_code();
    }
    code->remove_unreachable();
    // BackwardFlowAnalysis back(code);
    if (proc_table->get_return_type() != Type::VOID && !(code->check_returns()))
        Error::warn("Function " + get_name() +
                    " doesn't have a return in all possible paths");
}

void Root_Ast::build_tac(std::shared_ptr<GlobalSymbolTable> symtab) {
    for (std::shared_ptr<FuncEntry> func : symtab->get_funcs()) {
        func->set_return_label();
    }
    std::vector<std::shared_ptr<Func_Ast>> funcs_copy = this->get_funcs();
    sort(funcs_copy.begin(), funcs_copy.end(), [](auto func1, auto func2) {
        return func1->get_name() < func2->get_name();
    });
    for (const std::shared_ptr<Func_Ast> &func : funcs_copy) {
        func->build_tac(func->get_symtab());
    }
}
