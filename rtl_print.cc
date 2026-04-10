#include "ast.hh"
#include "rtl.hh"
#include "tac.hh"

#define RTL_SPACE "        "

void RTL_Double_Const_Opd::print(std::ostream &os) {
    os << std::fixed << std::setprecision(2);
    os << value;
}

void RTL_Int_Const_Opd::print(std::ostream &os) { os << value; }

void RTL_Label_Opd::print(std::ostream &os) { os << "Label" << label_index; }

void RTL_Register_Opd::print(std::ostream &os) { os << reg->get_name(); }

void RTL_Zero_Opd::print(std::ostream &os) { os << "zero"; }

void RTL_Function_Call_Opd::print(std::ostream &os) { os << entry->get_name(); }

void RTL_Str_Const_Opd::print(std::ostream &os) { os << "_str_" << id; }

void RTL_Var_Opd::print(std::ostream &os) { os << entry->get_name(); }

void Compute_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    switch (opd) {
    case Binary_Opd_Type::AND:
        os << "and";
        break;
    case Binary_Opd_Type::OR:
        os << "or";
        break;
    case Binary_Opd_Type::EQ:
        os << "seq";
        break;
    case Binary_Opd_Type::GE:
        os << "sge";
        break;
    case Binary_Opd_Type::GT:
        os << "sgt";
        break;
    case Binary_Opd_Type::LE:
        os << "sle";
        break;
    case Binary_Opd_Type::LT:
        os << "slt";
        break;
    case Binary_Opd_Type::MINUS:
        os << "sub";
        break;
    case Binary_Opd_Type::MULT:
        os << "mul";
        break;
    case Binary_Opd_Type::NE:
        os << "sne";
        break;
    case Binary_Opd_Type::NOT:
        os << "not";
        break;
    case Binary_Opd_Type::PLUS:
        os << "add";
        break;
    case Binary_Opd_Type::UMINUS:
        os << "uminus";
        break;
    case Binary_Opd_Type::DIV:
        os << "div";
        break;
    };
    if (type == Type::FLOAT)
        os << ".d";
    os << ": ";
    if (reg) {
        reg->print(os);
        os << " <- ";
    }
    lOpd->print(os);
    if (rOpd) {
        os << " , ";
        rOpd->print(os);
    }
}

void Goto_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    os << "goto: ";
    label->print(os);
}

void If_Goto_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    os << "bgtz: ";
    reg->print(os);
    os << ", ";
    label->print(os);
}

void Label_RTL_Stmt::print(std::ostream &os) {
    os << std::endl;
    label->print(os);
    os << ":";
}

void Return_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE << "return ";
    reg->print(os);
}

void Read_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    os << "read";
}

void Write_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    os << "write";
}

void Move_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    if (movf)
        os << "movf";
    else if (movt)
        os << "movt";
    else
        switch (type) {
        case Opd_Type::FLOAT:
            os << "iLoad.d";
            break;
        case Opd_Type::INT:
            os << "iLoad";
            break;
        case Opd_Type::STR:
            os << "load_addr";
            break;
        case Opd_Type::VAR:
            if (var_type == Type::FLOAT)
                os << "load.d";
            else
                os << "load";
            break;
        case Opd_Type::TEMP:
            if (var_type == Type::FLOAT)
                os << "move.d";
            else
                os << "move";
            break;
        case Opd_Type::ZERO:
            os << "move";
            break;
        default:
            os << "load";
        };
    os << ": ";
    reg->print(os);
    os << " <- ";
    opd->print(os);
    if (movf || movt)
        os << " , 0";
}

void Store_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    switch (type) {
    case Opd_Type::FLOAT:
        os << "store.d";
        break;
    case Opd_Type::TEMP:
    case Opd_Type::VAR:
        if (var_type == Type::FLOAT) {
            os << "store.d";
            break;
        }
    default:
        os << "store";
    }
    os << ": ";
    var->print(os);
    os << " <- ";
    reg->print(os);
}

void Function_Call_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    std::shared_ptr<RTL_Register_Opd> reg = func->getReg();
    if (reg) {
        reg->print(os);
        os << " = ";
    }
    os << "call ";
    func->print(os);
}

void Stack_RTL_Stmt::print(std::ostream &os) {
    os << RTL_SPACE;
    if (reg) {
        os << "push: ";
        reg->print(os);
    } else
        os << "pop";
}

void RTL_Code::print(std::ostream &os) {
    for (auto rtlStmt : rtlStmts) {
        rtlStmt->print(os);
        os << std::endl;
    }
}

void TAC_Code::print_rtl(std::ostream &os) {
    for (auto tacStmt : tacStmts)
        if (tacStmt->getRTLCode())
            tacStmt->getRTLCode()->print(os);
        else if (auto tacRet =
                     std::dynamic_pointer_cast<Return_TAC_Stmt>(tacStmt))
            std::cout << "ret" << std::endl;
        else if (auto tacLab =
                     std::dynamic_pointer_cast<Label_TAC_Stmt>(tacStmt))
            std::cout << "lab" << std::endl;
}

void Func_Ast::print_rtl(std::ostream &os) {
    std::shared_ptr<TAC_Code> tacCode = get_code();
    if (!tacCode->is_empty()) {
        os << "**PROCEDURE: " << proc_table->get_name() << std::endl;
        os << "**BEGIN: RTL Statements" << std::endl;
        tacCode->print_rtl(os);
        os << "**END: RTL Statements" << std::endl;
    }
}

void Root_Ast::print_rtl(std::ostream &os) {
    std::vector<std::shared_ptr<Func_Ast>> funcs_copy = this->get_funcs();
    sort(funcs_copy.begin(), funcs_copy.end(), [](auto func1, auto func2) {
        return func1->get_name() < func2->get_name();
    });
    for (auto func : funcs_copy)
        func->print_rtl(os);
}