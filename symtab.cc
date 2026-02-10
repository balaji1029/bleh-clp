#include "symtab.hh"

const std::string &get_type_str(Type type) {
    std::string binary_expr_type;
    switch (type) {
    case Type::INT:
        binary_expr_type = "int";
        break;
    case Type::BOOL:
        binary_expr_type = "bool";
        break;
    case Type::FLOAT:
        binary_expr_type = "float";
        break;
    case Type::STRING:
        binary_expr_type = "string";
        break;
    case Type::VOID:
        binary_expr_type = "void";
        break;
    default:
    };
    return binary_expr_type;
}

void ProcSymbolTable::add_param(std::string type, std::string name) {
    params.push_back(std::make_shared<SymTabEntry>(get_type_enum(type), name));
}

void ProcSymbolTable::add_local(std::string type, std::string name) {
    locals.push_back(std::make_shared<SymTabEntry>(get_type_enum(type), name));
}