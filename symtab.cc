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

FuncEntry::FuncEntry(Type return_type, const std::string &name, const std::vector<std::pair<Type, std::string>> &params,
                     bool implemented)
    : return_type(return_type), name(name), implemented(implemented) {
    // The set of names of the parameters
    std::set<std::string> param_names;
    for (std::pair<Type, std::string> param : params) {
        param_types.push_back(param.first);
        if (param_names.count(param.second))
            Error::semantic_error("Function Declaration " + name + ": Parameter name " + param.second +
                                  " already used");
        param_names.insert(param.second);
    }
}

Type FuncEntry::get_return_type() const { return return_type; }

const std::string &FuncEntry::get_name() const { return name; }

const std::vector<Type> &FuncEntry::get_param_types() const { return param_types; }

void FuncEntry::set_implemented() {
    if (implemented)
        Error::semantic_error("Function was implemented before");
    implemented = true;
}

bool FuncEntry::is_implemented() const { return implemented; }

// ------------------------------ ProcSymbolTable ------------------------------

ProcSymbolTable::ProcSymbolTable(std::shared_ptr<FuncEntry> func_entry) : func_entry(func_entry) {}

void ProcSymbolTable::add_param(Type type, const std::string &name) {
    params.push_back(std::make_shared<SymTabEntry>(type, name));
}

void ProcSymbolTable::add_local(Type type, const std::string &name) {
    locals.push_back(std::make_shared<SymTabEntry>(type, name));
}

const std::string &ProcSymbolTable::get_name() { return func_entry->get_name(); }

Type ProcSymbolTable::get_return_type() { return func_entry->get_return_type(); }

const std::vector<std::shared_ptr<SymTabEntry>> &ProcSymbolTable::get_params() { return params; }

std::optional<std::shared_ptr<SymTabEntry>> ProcSymbolTable::find_var(const std::string &name) {
    
    // Checks for the variable in the parameters
    auto it = std::find_if(params.begin(), params.end(),
                           [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it != params.end())
        return *it;
    
    // Checks for the variable in the local variables
    auto it2 = std::find_if(locals.begin(), locals.end(),
                            [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it2 != locals.end())
        return *it2;
    return std::nullopt;
}

// ------------------------------ GlobalSymbolTable ------------------------------

void GlobalSymbolTable::add_param(Type type, const std::string &name) {

    // Checks if the current symbol table pointer points to something
    if (!this->curr_symtab) {
        Error::semantic_error("parameter in global_scope??");
    }

    // Check if there exists a function with the same name in the Symbol Table
    auto func_ptr = find_func(name);
    if (func_ptr)
        Error::semantic_error("Variable " + name + " coincides with a procedure name");

    // Checks if there exists a local variable (including the parameters) with the same name in the Symbol Table
    auto var_ptr = find_local(name);
    if (var_ptr)
        Error::semantic_error(std::string("Param ") + name + " already declared");

    // Adds the parameter
    if (this->curr_symtab)
        this->curr_symtab->add_param(type, name);
}

void GlobalSymbolTable::add_var(Type type, const std::string &name) {

    // Check if the variable name is main

    // Check if there exists a function with the same name in the Symbol Table
    auto func_ptr = find_func(name);
    if (func_ptr)
        Error::semantic_error("Variable " + name + " coincides with a procedure name");

    // Checks if there exists a local variable (including the parameters) with the same name in the Symbol Table
    auto var_ptr = find_local(name);
    if (var_ptr)
        Error::semantic_error(std::string("Var ") + name + " already declared");

    // Adds it to the Current Symbol Table or the global variables accordingly
    if (this->curr_symtab) {
        this->curr_symtab->add_local(type, name);
    } else {
        globals.push_back(std::make_shared<SymTabEntry>(type, name));
    }
}

void GlobalSymbolTable::add_func(Type return_type, const std::string &name,
                                 const std::vector<std::pair<Type, std::string>> &params) {

    // Checks if the current symbol table pointer points to something
    if (curr_symtab) {
        Error::semantic_error("We don't accept function definitions in functions");
    }

    // Check if there exists a function with the same name in the Symbol Table
    auto func_ptr = find_func(name);
    if (func_ptr)
        Error::semantic_error("Function with the same name already exists");

    // Check if there exists a variable with the same name in the Symbol Table
    auto var_ptr = find_var(name);
    if (var_ptr)
        Error::semantic_error("Variable with the same name already exists");

    // Adds the function to the Function Symbol Table
    funcs.push_back(std::make_shared<FuncEntry>(return_type, name, params));
}

void GlobalSymbolTable::new_proc_symtab(Type return_type, const std::string &name,
                                        const std::vector<std::pair<Type, std::string>> &params) {

    auto func_ptr = find_func(name);
    if (func_ptr) {
        // Check if the paramter types match with the declaration found
        const std::vector<Type> &param_types = (*func_ptr)->get_param_types();

        // Check if the number of parameters in the declaration and definition match
        if (params.size() != param_types.size())
            Error::semantic_error("Number of parameters in the definition does not match with declaration");

        // Check if the parameter types match
        for (size_t idx = 0; idx < params.size() && idx < param_types.size(); idx++)
            if (params[idx].first != param_types[idx])
                Error::semantic_error("Types of parameters do not match");

        // Check if and sets function to be implemented
        (*func_ptr)->set_implemented();
    } else {
        // Add the function to the Function Entries
        // funcs.push_back(std::make_shared<FuncEntry>(return_type, name, params, true));
        add_func(return_type, name, params);
        
        func_ptr = find_func(name);
        
        // Check if and sets function to be implemented
        (*func_ptr)->set_implemented();
    }

    // Add the Process Symbol Table to the vector of Symbol Tables and set it to be the Current Symbol Table
    procs.push_back(std::make_shared<ProcSymbolTable>(*func_ptr));
    curr_symtab = procs.back();

    // Adds parameters to the Current Symbol Table
    for (auto param : params)
        add_param(param.first, param.second);
}

void GlobalSymbolTable::go_global() { curr_symtab.reset(); }

std::shared_ptr<ProcSymbolTable> GlobalSymbolTable::get_curr_proc_symtab() { return curr_symtab; }

std::optional<std::shared_ptr<FuncEntry>> GlobalSymbolTable::find_func(const std::string &name) {
    auto it = std::find_if(funcs.begin(), funcs.end(),
                           [&](std::shared_ptr<FuncEntry> entry) { return entry->get_name() == name; });
    if (it != funcs.end())
        return *it;
    return std::nullopt;
}

std::optional<std::shared_ptr<SymTabEntry>> GlobalSymbolTable::find_var(const std::string &name) {
    // If the local scope is not global check there
    if (curr_symtab) {
        auto curr_var_ptr = curr_symtab->find_var(name);
        if (curr_var_ptr)
            return curr_var_ptr;
    }

    // Then check in the global scope too
    auto it = std::find_if(globals.begin(), globals.end(),
                           [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
    if (it != globals.end())
        return *it;
    return std::nullopt;
}

std::optional<std::shared_ptr<SymTabEntry>> GlobalSymbolTable::find_local(const std::string &name) {
    if (curr_symtab) {
        // If the local scope is not global, check here
        auto curr_var_ptr = curr_symtab->find_var(name);
        if (curr_var_ptr)
            return curr_var_ptr;
    } else {
        // Else check in the global scope
        auto it = std::find_if(globals.begin(), globals.end(),
                               [&](std::shared_ptr<SymTabEntry> entry) { return entry->get_name() == name; });
        if (it != globals.end())
            return *it;
    }
    return std::nullopt;
}
