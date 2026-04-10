#include "asm.hh"

#include <iostream>
void ASM_Double_Const_Opd::print(std::ostream &os) {
    os << std::fixed << std::setprecision(2);
    os << value;
}

void ASM_Int_Const_Opd::print(std::ostream &os) { os << value; }

void ASM_Label_Opd::print(std::ostream &os) { os << "Label" << label_index; }

void ASM_Mem_Opd::print(std::ostream &os) {}

void ASM_Register_Opd::print(std::ostream &os) { os << reg->get_name(); }

void ASM_Str_Const_Opd::print(std::ostream &os) { os << "_str_" << id; }

void ASM_Zero_Opd::print(std::ostream &os) { os << "$zero"; }

void Compute_ASM_Stmt::print(std::ostream &os) {
    os << SPACE;
    switch (opd) {
    case Binary_Opd_Type::AND:
        os << "and";
        break;
    case Binary_Opd_Type::OR:
        os << "or";
        break;
    case Binary_Opd_Type::EQ:
        if (type == Type::INT)
            os << "seq";
        else
            os << "c.eq";
        break;
    case Binary_Opd_Type::GE:
        os << "sge";
        break;
    case Binary_Opd_Type::GT:
        os << "sgt";
        break;
    case Binary_Opd_Type::LE:
        if (type == Type::INT)
            os << "sle";
        else
            os << "c.le";
        break;
    case Binary_Opd_Type::LT:
        if (type == Type::INT)
            os << "slt";
        else
            os << "c.lt";
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
        os << "xori";
        break;
    case Binary_Opd_Type::PLUS:
        os << "add";
        break;
    case Binary_Opd_Type::UMINUS:
        os << "neg";
        break;
    case Binary_Opd_Type::DIV:
        os << "div";
        break;
    }
    if (type == Type::FLOAT)
        os << ".d";
    os << " ";
    if (reg) {
        reg->print(os);
        os << ", ";
    }
    lOpd->print(os);
    if (rOpd) {
        os << ", ";
        rOpd->print(os);
    }
}

void Call_ASM_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "jal " << entry->get_name();
    os << "\n";
}

void Goto_ASM_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "j ";
    label->print(os);
}

void If_Goto_ASM_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "bgtz ";
    reg->print(os);
    os << ", ";
    label->print(os);
}

void Jump_Reg_ASM_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "jr ";
    reg->print(os);
}

void Label_ASM_Stmt::print(std::ostream &os) { label->print(os); }

void Move_ASM_Stmt::print(std::ostream &os) {
    if (movf)
        os << "movf";
    else if (movt)
        os << "movt";
    else
        switch (type) {
        case Opd_Type::FLOAT:
            os << "li.d";
            break;
        case Opd_Type::INT:
            os << "li";
            break;
        case Opd_Type::STR:
            os << "la";
            break;
        case Opd_Type::VAR:
            if (var_type == Type::FLOAT)
                os << "l.d";
            else
                os << "lw";
            break;
        case Opd_Type::TEMP:
            if (var_type == Type::FLOAT)
                os << "mov.d";
            else
                os << "move";
            break;
        case Opd_Type::ZERO:
            os << "move";
            break;
        default:
            os << "lw";
        }
    os << " ";
    reg->print(os);
    os << ", ";
    opd->print(os);
    if (movf || movt)
        os << ", 0";
}

void Syscall_ASM_Stmt::print(std::ostream &os) {
    os << SPACE;
    os << "syscall";
}

void ASM_Code::print(std::ostream &os) {
    for (auto asmStmt : asmStmts) {
        asmStmt->print(os);
        os << std::endl;
    }
}

void Func_Ast::print_asm(std::ostream &os) {
    if (!asm_code->is_empty()) {
        // os << "**PROCEDURE: " << proc_table->get_name() << std::endl;
        // os << "**BEGIN: RTL Statements" << std::endl;
        // tacCode->print_rtl(os);
        asm_code->print(os);
        // os << "**END: RTL Statements" << std::endl;
    }
}

void Root_Ast::print_asm(std::ostream &os) {
    for (auto func : funcs) {
        func->print_asm(os);
    }
}

