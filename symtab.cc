#include "symtab.hh"
#include "utils.hh"
#include <iostream>

std::string get_type_str(Type type) {
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
        break;
    };
    return binary_expr_type;
}

std::ostream &operator<<(std::ostream &os, Type type) {
    os << get_type_str(type);
    return os;
}

// ------------------------------ SymTabEntry ------------------------------

SymTabEntry::SymTabEntry(Type type, const std::string &name) : type(type), name(name) {}

std::string SymTabEntry::get_name() { return name; }

Type SymTabEntry::get_type() { return type; }

// ------------------------------ FuncEntry ------------------------------

FuncEntry::FuncEntry(Type return_type, const std::string &name, const std::vector<std::pair<Type, std::string>> &params)
    : return_type(return_type), name(name) {
    for (std::pair<Type, std::string> param : params) {
        param_types.push_back(param.first);
    }
}

Type FuncEntry::get_return_type() const { return return_type; }

const std::string &FuncEntry::get_name() const { return name; }

const std::vector<Type> &FuncEntry::get_param_types() const { return param_types; }

// ------------------------------ ProcSymbolTable ------------------------------

ProcSymbolTable::ProcSymbolTable(Type return_type, const std::string &name) : name(name), return_type(return_type) {}

void ProcSymbolTable::add_param(Type type, const std::string &name) {
    params.push_back(std::make_shared<SymTabEntry>(type, name));
}

void ProcSymbolTable::add_local(Type type, const std::string &name) {
    locals.push_back(std::make_shared<SymTabEntry>(type, name));
}

const std::string &ProcSymbolTable::get_name() { return name; }

Type ProcSymbolTable::get_return_type() { return return_type; }

const std::vector<std::shared_ptr<SymTabEntry>> &ProcSymbolTable::get_params() { return params; }

std::optional<std::shared_ptr<SymTabEntry>> ProcSymbolTable::find_var(const std::string &name) {
    auto it = std::find_if(params.begin(), params.end(),
                           [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it != params.end())
        return *it;
    auto it2 = std::find_if(locals.begin(), locals.end(),
                            [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it2 != locals.end())
        return *it2;
    return std::nullopt;
}

// ------------------------------ GlobalSymbolTable ------------------------------

void GlobalSymbolTable::new_proc_symtab(Type return_type, const std::string &name,
                                        const std::vector<std::pair<Type, std::string>> &params) {
    auto func_ptr = std::find_if(funcs.begin(), funcs.end(),
                                 [&](std::shared_ptr<FuncEntry> entry) { return entry->get_name() == name; });
    if (func_ptr != funcs.end()) {
        const std::vector<Type> &param_types = (*func_ptr)->get_param_types();
        if (params.size() != param_types.size())
            Error::semantic_error("Number of parameters in the definition does not match with declaration");
        for (size_t idx = 0; idx < params.size() && idx < param_types.size(); idx++)
            if (params[idx].first != param_types[idx])
                Error::semantic_error("Types of parameters do not match");
    }
    procs.push_back(std::make_shared<ProcSymbolTable>(return_type, name));
    curr_symtab = procs.back();
    for (auto param : params)
        add_param(param.first, param.second);
}

void GlobalSymbolTable::add_param(Type type, const std::string &name) {
    if (!this->curr_symtab) {
        Error::semantic_error("parameter in global_scope??");
    }
    auto var_ptr = find_local(name);
    if (var_ptr)
        Error::semantic_error(std::string("Param ") + name + " already declared");
    this->curr_symtab->add_param(type, name);
}

void GlobalSymbolTable::add_var(Type type, const std::string &name) {
    auto var_ptr = find_local(name);
    if (var_ptr)
        Error::semantic_error(std::string("Var ") + name + " already declared");
    if (this->curr_symtab) {
        this->curr_symtab->add_local(type, name);
    } else {
        globals.push_back(std::make_shared<SymTabEntry>(type, name));
    }
}

void GlobalSymbolTable::add_func(Type return_type, const std::string &name,
                                 const std::vector<std::pair<Type, std::string>> &params) {
    if (curr_symtab) {
        Error::semantic_error("We don't accept function definitions in functions");
    }
    auto it = std::find_if(funcs.begin(), funcs.end(),
                           [&](std::shared_ptr<FuncEntry> entry) { return entry->get_name() == name; });
    if (it != funcs.end())
        Error::semantic_error("Function with the same name already exists");
    funcs.push_back(std::make_shared<FuncEntry>(return_type, name, params));
}

void GlobalSymbolTable::go_global() { curr_symtab.reset(); }

std::shared_ptr<ProcSymbolTable> GlobalSymbolTable::get_curr_proc_symtab() { return curr_symtab; }

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

std::optional<std::shared_ptr<SymTabEntry>> GlobalSymbolTable::find_local(const std::string &name) {
    // std::cout << curr_symtab << std::endl;
    if (curr_symtab) {
        auto curr_var_ptr = curr_symtab->find_var(name);
        if (curr_var_ptr)
            return curr_var_ptr;
    } else {
        // std::cout << "I'm here" << std::endl;
        auto it = std::find_if(globals.begin(), globals.end(),
                               [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
        if (it != globals.end())
            return *it;
    }
    return std::nullopt;
}
