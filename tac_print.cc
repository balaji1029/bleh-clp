
#include "tac.hh"

#include "ast.hh"

void Binary_TAC_Opd::print(std::ostream &os) {
    if (!rOpd) {
        os << to_string(opd) << " ";
        lOpd->print(os);
    } else {
        lOpd->print(os);
        os << " " << to_string(opd) << " ";
        rOpd->print(os);
    }
}

void Float_Const_TAC_Opd::print(std::ostream &os) {
    os << std::fixed << std::setprecision(2);
    os << value;
}

void Int_Const_TAC_Opd::print(std::ostream &os) { os << value; }

void Str_Const_TAC_Opd::print(std::ostream &os) { os << value; }

void Label_TAC_Opd::print(std::ostream &os) { os << "Label" << label_index; }

void Temporary_TAC_Opd::print(std::ostream &os) { os << "temp" << temp_num; }

void Variable_TAC_Opd::print(std::ostream &os) { os << entry->get_name(); }

void Function_Call_TAC_Opd::print(std::ostream &os) {
    os << entry->get_name() << "(";
    for (size_t i = 0; i + 1 < args.size(); i++) {
        args[i]->print(os);
        os << ", ";
    }
    if (args.size() > 0)
        args[args.size() - 1]->print(os);
    os << ")";
}

void Function_Call_TAC_Stmt::print(std::ostream &os) {
    os << SPACE;
    opd->print(os);
    os << "\n";
}

void Return_TAC_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "return ";
    opd->print(os);
    os << "\n";
}

void Assign_TAC_Stmt::print(std::ostream &os) {
    os << SPACE;
    lOpd->print(os);
    os << " = ";
    expr->print(os);
    os << "\n";
}

void Goto_TAC_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "goto ";
    label->print(os);
    os << "\n";
}

void If_Goto_TAC_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "if(";
    cond->print(os);
    os << ") goto ";
    label->print(os);
    os << "\n";
}

void IO_TAC_Stmt::print(std::ostream &os) {
    os << SPACE;
    switch (opd) {
    case IO_Opd::WRITE:
        os << "write  ";
        break;

    case IO_Opd::READ:
        os << "read  ";
        break;
    }
    var->print(os);
    os << "\n";
}

void Label_TAC_Stmt::print(std::ostream &os) {
    label->print(os);
    os << ":\n";
}

void TAC_Code::print(std::ostream &os) {
    for (const std::shared_ptr<TAC_Stmt> &stmt : tacStmts) {
        stmt->print(os);
    }
}

void Root_Ast::print_tac(std::ostream &os) {
    std::vector<std::shared_ptr<Func_Ast>> funcs_copy = this->get_funcs();
    sort(funcs_copy.begin(), funcs_copy.end(), [](auto func1, auto func2) {
        return func1->get_name() < func2->get_name();
    });
    for (const std::shared_ptr<Func_Ast> &func : funcs_copy) {
        func->print_tac(os);
    }
}

void Func_Ast::print_tac(std::ostream &os) {
    if (code->is_empty())
        return;
    os << "**PROCEDURE: " << proc_table->get_name() << "\n";
    os << "**BEGIN: Three Address Code Statements\n";
    code->print(os);
    os << "**END: Three Address Code Statements\n";
}
