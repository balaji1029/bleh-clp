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

void ProcSymbolTable::add_param(Type type, const std::string &name) { params.emplace_back(type, name); }

void ProcSymbolTable::add_local(Type type, const std::string &name) { locals.emplace_back(type, name); }

ProcSymbolTable::ProcSymbolTable(Type return_type, const std::string &name) : name(name), return_type(return_type) {}

void GlobalSymbolTable::new_proc_symtab(Type return_type, const std::string &name) {
    procs.emplace_back(return_type, name);
    curr_symtab = procs.back();
}

void GlobalSymbolTable::add_param(Type type, const std::string &name) {
    // if there is no proc table yet, store it in the globals
    // if (this->curr_symtab) {
    //     globals.emplace_back(type, name);
    // } else {
    if (!this->curr_symtab) {
        // give error
    }
    this->curr_symtab->add_param(type, name);
}

void GlobalSymbolTable::add_var(Type type, const std::string &name) {
    if (this->curr_symtab) {
        this->curr_symtab->add_local(type, name);
    } else {
        globals.emplace_back(type, name);
    }
}

std::shared_ptr<ProcSymbolTable> GlobalSymbolTable::get_curr_proc_symtab() { return curr_symtab; }

std::optional<std::shared_ptr<SymTabEntry>> ProcSymbolTable::find_var(const std::string &name) {
    auto it = std::find_if(params.begin(), params.end(),
                           [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it != params.end())
        return *it;
    auto it = std::find_if(locals.begin(), locals.end(),
                           [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it != locals.end())
        return *it;
    return std::nullopt;
}

std::optional<std::shared_ptr<SymTabEntry>> GlobalSymbolTable::find_var(const std::string &name) {
    if (curr_symtab) {
        auto curr_var_ptr = curr_symtab->find_var(name);
        if (curr_var_ptr)
            return curr_var_ptr;
    }
    auto it = std::find_if(globals.begin(), globals.end(),
                           [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it != globals.end())
        return *it;
    return std::nullopt;
}