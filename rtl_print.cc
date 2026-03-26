#include "ast.hh"
#include "rtl.hh"
#include "tac.hh"

void RTL_Double_Const_Opd::print(std::ostream &os) { os << value; }

void RTL_Int_Const_Opd::print(std::ostream &os) { os << value; }

void RTL_Label_Opd::print(std::ostream &os) { os << "Label" << label_index; }

void RTL_Register_Opd::print(std::ostream &os) { os << reg->get_name(); }

void RTL_Stemp_Opd::print(std::ostream &os) {
    os << "stemp" << stemp_index << std::endl;
}

void RTL_Str_Const_Opd::print(std::ostream &os) { os << value; }

void RTL_Var_Opd::print(std::ostream &os) { os << entry->get_name(); }

void Compute_RTL_Stmt::print(std::ostream &os) {
    os << "compute: " << static_cast<int>(opd) << " ";
    lOpd->print(os);
    rOpd->print(os);
    os << std::endl;
}

void Goto_RTL_Stmt::print(std::ostream &os) {
    os << "goto: ";
    label->print(os);
    os << std::endl;
}

void If_Goto_RTL_Stmt::print(std::ostream &os) {
    os << "bgtz: ";
    reg->print(os);
    os << ", ";
    os << std::endl;
    label->print(os);
}

void Label_RTL_Stmt::print(std::ostream &os) {
    label->print(os);
    os << ":" << std::endl;
}

void Move_RTL_Stmt::print(std::ostream &os) {}

void Read_RTL_Stmt::print(std::ostream &os) {
    os << "read:";
    os << std::endl;
}

void Write_RTL_Stmt::print(std::ostream &os) {
    os << "write:";
    os << std::endl;
}

void Load_RTL_Stmt::print(std::ostream &os) {
    switch (type) {
    case Opd_Type::FLOAT:
        os << "iLoad.d:";
        break;
    case Opd_Type::INT:
    case Opd_Type::STR:
        os << "iLoad:";
        break;
    default:
        os << "load:";
    };
    reg->print(os);
    os << " <- ";
    opd->print(os);
    os << std::endl;
}

void Store_RTL_Stmt::print(std::ostream &os) {
    os << "store: ";
    var->print(os);
    os << " <- ";
    reg->print(os);
    os << std::endl;
}

void RTL_Code::print(std::ostream &os) {
    for (auto rtlStmt : rtlStmts)
        rtlStmt->print(os);
}

void TAC_Code::print_rtl(std::ostream &os) {
    for (auto tacStmt : tacStmts)
        tacStmt->getRTLCode()->print(os);
}

void Func_Ast::print_rtl(std::ostream &os) { get_code()->print_rtl(os); }

void Root_Ast::print_rtl(std::ostream &os) {
    for (auto func : funcs)
        func->print_rtl(os);
}