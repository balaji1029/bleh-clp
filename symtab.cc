#include "symtab.hh"
#include "asm.hh"
#include "utils.hh"
#include <iostream>

#include <algorithm>
#include <map>

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

int get_type_size(Type type) {
    switch (type) {
    case Type::INT:
        return 4;
    case Type::BOOL:
        return 4;
    case Type::FLOAT:
        return 8;
    case Type::STRING:
        return 4;
    default:
        return 0;
    }
}

// ------------------------------ SymTabEntry ------------------------------

SymTabEntry::SymTabEntry(Type type, const std::string &name, bool global, bool param)
    : type(type), name(name), offset(std::nullopt), size(get_type_size(type)),
      global(global), param(param) {}

std::string SymTabEntry::get_name() { return name; }

Type SymTabEntry::get_type() { return type; }

void SymTabEntry::set_offset(int offset) { this->offset = offset; }

void SymTabEntry::print(std::ostream &os, const std::string &level) {
    os << level << "Name: " << name << "<" << get_type_str(type) << ">" << " ";
    if (offset == std::nullopt) {
        os << "Entity Type: VAR (No offset assigned yet)" << "\n";
    } else {
        os << "Entity Type: VAR Start Offset: " << *offset
           << " End Offset: " << (*offset + size) << "\n";
    }
}

// ------------------------------ FuncEntry ------------------------------

FuncEntry::FuncEntry(Type return_type, const std::string &name,
                     const std::vector<std::pair<Type, std::string>> &params,
                     bool implemented)
    : return_type(return_type), name(name), implemented(implemented),
      call_made(false) {
    // The set of names of the parameters
    std::set<std::string> param_names_set;
    for (const std::pair<Type, std::string> &param : params) {
        param_types.push_back(param.first);
        if (param_names_set.count(param.second))
            Error::semantic_error("Function Declaration " + name +
                                  ": Parameter name " + param.second +
                                  " already used");
        param_names_set.insert(param.second);
        param_names.push_back(param.second);
    }
}

Type FuncEntry::get_return_type() const { return return_type; }

const std::string &FuncEntry::get_name() const { return name; }

const std::vector<Type> &FuncEntry::get_param_types() const {
    return param_types;
}

const std::vector<std::string> &FuncEntry::get_param_names() const {
    return param_names;
}

void FuncEntry::set_implemented() {
    if (implemented)
        Error::semantic_error("Function was implemented before");
    implemented = true;
}

void FuncEntry::set_call_made() { call_made = true; }

bool FuncEntry::is_implemented() const { return implemented; }

bool FuncEntry::is_call_made() const { return call_made; }

void FuncEntry::set_return_label() {
    if (return_type != Type::VOID)
        return_label = std::make_shared<Label_TAC_Opd>();
}

std::optional<std::shared_ptr<Label_TAC_Opd>>
FuncEntry::get_return_label() const {
    return return_label;
}

// ------------------------------ ProcSymbolTable ------------------------------

ProcSymbolTable::ProcSymbolTable(
    std::shared_ptr<FuncEntry> func_entry,
    std::shared_ptr<GlobalSymbolTable> global_symtab)
    : func_entry(func_entry), register_pool(std::make_shared<RegisterPool>()),
      global_symtab(global_symtab) {}

void ProcSymbolTable::add_param(Type type, const std::string &name) {
    params.push_back(std::make_shared<SymTabEntry>(type, name, false, true));
}

void ProcSymbolTable::add_local(Type type, const std::string &name) {
    locals.push_back(std::make_shared<SymTabEntry>(type, name));
}

void ProcSymbolTable::add_return_stmt() { return_stmt = true; }

bool ProcSymbolTable::has_return_stmt() const {
    if (return_stmt)
        return true;
    for (auto child : children) {
        if (child->has_return_stmt())
            return true;
    }
    return false;
}

std::shared_ptr<Variable_TAC_Opd> ProcSymbolTable::get_return_tac_opd() {
    return return_tac_opd;
}

void ProcSymbolTable::set_return_tac_opd(
    std::shared_ptr<Variable_TAC_Opd> opd) {
    return_tac_opd = opd;
}

const std::string &ProcSymbolTable::get_name() {
    return func_entry->get_name();
}

Type ProcSymbolTable::get_return_type() {
    return func_entry->get_return_type();
}

const std::vector<std::shared_ptr<SymTabEntry>> &ProcSymbolTable::get_params() {
    return params;
}

std::optional<std::shared_ptr<SymTabEntry>>
ProcSymbolTable::find_var(const std::string &name) {

    // Checks for the variable in the parameters
    std::vector<std::shared_ptr<SymTabEntry>>::iterator it = std::find_if(
        params.begin(), params.end(), [&](std::shared_ptr<SymTabEntry> entry) {
            return entry->get_name() == name;
        });
    if (it != params.end())
        return *it;

    // Checks for the variable in the local variables
    std::vector<std::shared_ptr<SymTabEntry>>::iterator it2 = std::find_if(
        locals.begin(), locals.end(), [&](std::shared_ptr<SymTabEntry> entry) {
            return entry->get_name() == name;
        });
    if (it2 != locals.end())
        return *it2;
    return std::nullopt;
}

std::optional<std::shared_ptr<Label_TAC_Opd>>
ProcSymbolTable::get_return_label() {
    return func_entry->get_return_label();
}

std::shared_ptr<Temporary_TAC_Opd> ProcSymbolTable::getNewTemp() {
    return std::make_shared<Temporary_TAC_Opd>(num_temps++);
}

std::shared_ptr<Variable_TAC_Opd> ProcSymbolTable::getNewSTemp(Type type) {
    std::shared_ptr<SymTabEntry> symtab_entry = std::make_shared<SymTabEntry>(
        type, "stemp" + std::to_string(num_stemps++));
    locals.push_back(symtab_entry);
    return std::make_shared<Variable_TAC_Opd>(symtab_entry);
}

void ProcSymbolTable::set_offsets(int start) {
    int offset = 8;
    for (std::shared_ptr<SymTabEntry> entry : params) {
        entry->set_offset(offset);
        offset += get_type_size(entry->get_type());
    }

    total_offset = start;
    for (std::shared_ptr<SymTabEntry> entry : locals) {
        total_offset -= get_type_size(entry->get_type());
        entry->set_offset(total_offset);
    }
    int minimum = total_offset;
    for (std::shared_ptr<ProcSymbolTable> child : children) {
        child->set_offsets(total_offset);
        minimum = std::min(minimum, child->get_total_offset());
    }
    // std::cout << minimum << std::endl;
    total_offset = minimum;
}

void ProcSymbolTable::print(std::ostream &os, std::string &level, bool base) {
    if (is_phantom())
        return;
    if (base) {
        os << "**PROCEDURE: " << func_entry->get_name() << ", Return Type:<"
           << func_entry->get_return_type() << ">" << "\n";
        level.push_back(SPACE);
        os << level << "Formal Parameters\n";
        for (std::shared_ptr<SymTabEntry> entry : params)
            entry->print(os, level);
        os << level << "Local Declarartions\n";
    }
    for (std::shared_ptr<SymTabEntry> entry : locals)
        entry->print(os, level);
    for (auto child : children)
        child->print(os, level, false);
    if (base) {
        level.pop_back();
        os << "\n";
    }
}

std::shared_ptr<RegisterPool> ProcSymbolTable::getRegisterPool() {
    return register_pool;
}

int ProcSymbolTable::addString(std::string str) {
    return getGlobalSymtab()->addString(str);
}

std::shared_ptr<GlobalSymbolTable> ProcSymbolTable::getGlobalSymtab() {
    return global_symtab.lock();
}

std::shared_ptr<ASM_Code> ProcSymbolTable::get_asm_prologue() {
    std::shared_ptr<ASM_Code> asmCode = std::make_shared<ASM_Code>();

    std::shared_ptr<ASM_Mem_Opd> stackTop =
        std::make_shared<ASM_Mem_Opd>(0, Type::INT);

    std::shared_ptr<ASM_Stmt> storeRa = std::make_shared<Move_ASM_Stmt>(
        RegisterPool::getRa(), stackTop, Opd_Type::INT, Type::INT, false, false,
        true);

    stackTop = std::make_shared<ASM_Mem_Opd>(-4, Type::INT);

    std::shared_ptr<ASM_Stmt> storeFp = std::make_shared<Move_ASM_Stmt>(
        RegisterPool::getFp(), stackTop, Opd_Type::INT, Type::INT, false, false,
        true);

    std::shared_ptr<ASM_Stmt> subFp = std::make_shared<Compute_ASM_Stmt>(
        RegisterPool::getFp(), register_pool->getAsmSp(), 4,
        Binary_Opd_Type::MINUS, Type::INT);

    std::shared_ptr<ASM_Stmt> subSp = std::make_shared<Compute_ASM_Stmt>(
        register_pool->getAsmSp(), register_pool->getAsmSp(), -total_offset + 8,
        Binary_Opd_Type::MINUS, Type::INT);

    asmCode->append(storeRa, storeFp, subFp, subSp);
    return asmCode;
}

std::shared_ptr<ASM_Code> ProcSymbolTable::get_asm_epilogue() {
    std::shared_ptr<ASM_Code> asmCode = std::make_shared<ASM_Code>();

    std::shared_ptr<Label_ASM_Stmt> epilogue_label =
        std::make_shared<Label_ASM_Stmt>(get_epilogue_label());

    std::shared_ptr<ASM_Stmt> addSp = std::make_shared<Compute_ASM_Stmt>(
        register_pool->getAsmSp(), register_pool->getAsmSp(), -total_offset + 8,
        Binary_Opd_Type::PLUS, Type::INT);

    std::shared_ptr<ASM_Mem_Opd> stackTop =
        std::make_shared<ASM_Mem_Opd>(-4, Type::INT);

    std::shared_ptr<ASM_Stmt> loadFp = std::make_shared<Move_ASM_Stmt>(
        RegisterPool::getFp(), stackTop, Opd_Type::VAR, Type::INT, false, false,
        false);

    stackTop = std::make_shared<ASM_Mem_Opd>(0, Type::INT);

    std::shared_ptr<ASM_Stmt> loadRa = std::make_shared<Move_ASM_Stmt>(
        RegisterPool::getRa(), stackTop, Opd_Type::VAR, Type::INT, false, false,
        false);

    std::shared_ptr<ASM_Stmt> jumpRa =
        std::make_shared<Jump_Reg_ASM_Stmt>(RegisterPool::getRa());

    asmCode->append(epilogue_label, addSp, loadFp, loadRa, jumpRa);
    return asmCode;
}

std::shared_ptr<ASM_Label_Opd> ProcSymbolTable::get_epilogue_label() {
    return std::make_shared<ASM_Label_Opd>("epilogue_" + get_name());
}

void ProcSymbolTable::add_child(std::shared_ptr<ProcSymbolTable> child) {
    children.push_back(child);
}

// ------------------------------ GlobalSymbolTable
// ------------------------------

void GlobalSymbolTable::add_param(Type type, const std::string &name) {

    // Checks if the current symbol table pointer points to something
    if (symtab_stack.size() == 0) {
        Error::semantic_error("parameter in global_scope??");
    }

    // Check if there exists a function with the same name in the Symbol Table
    std::optional<std::shared_ptr<FuncEntry>> func_ptr = find_func(name);
    if (func_ptr)
        Error::semantic_error("Variable " + name +
                              " coincides with a procedure name");

    // Checks if there exists a local variable (including the parameters) with
    // the same name in the Symbol Table
    std::optional<std::shared_ptr<SymTabEntry>> var_ptr = find_local(name);
    if (var_ptr)
        Error::semantic_error(std::string("Param ") + name +
                              " already declared");

    // Adds the parameter
    if (symtab_stack.size() > 0)
        symtab_stack.back()->add_param(type, name);
}

void GlobalSymbolTable::add_var(Type type, const std::string &name) {

    // Check if the variable name is main

    // Check if there exists a function with the same name in the Symbol Table
    std::optional<std::shared_ptr<FuncEntry>> func_ptr = find_func(name);
    if (func_ptr)
        Error::semantic_error("Variable " + name +
                              " coincides with a procedure name");

    // Checks if there exists a local variable (including the parameters) with
    // the same name in the Symbol Table
    std::optional<std::shared_ptr<SymTabEntry>> var_ptr = find_local(name);
    if (var_ptr)
        Error::semantic_error(std::string("Var ") + name + " already declared");

    // Adds it to the Current Symbol Table or the global variables accordingly
    if (symtab_stack.size() > 0) {
        symtab_stack.back()->add_local(type, name);
    } else {
        globals.push_back(std::make_shared<SymTabEntry>(type, name, true));
    }
}

void GlobalSymbolTable::add_func(
    Type return_type, const std::string &name,
    const std::vector<std::pair<Type, std::string>> &params) {

    // Checks if the current symbol table pointer points to something
    if (symtab_stack.size() > 0) {
        Error::semantic_error(
            "We don't accept function definitions in functions");
    }

    // Check if there exists a function with the same name in the Symbol Table
    std::optional<std::shared_ptr<FuncEntry>> func_ptr = find_func(name);
    if (func_ptr)
        Error::semantic_error("Function with the same name already exists");

    // Check if there exists a variable with the same name in the Symbol Table
    std::optional<std::shared_ptr<SymTabEntry>> var_ptr = find_var(name);
    if (var_ptr)
        Error::semantic_error("Variable with the same name already exists");

    // Adds the function to the Function Symbol Table
    funcs.push_back(std::make_shared<FuncEntry>(return_type, name, params));
}

std::vector<std::shared_ptr<FuncEntry>> GlobalSymbolTable::get_funcs() const {
    return funcs;
}

void GlobalSymbolTable::new_proc_symtab(
    Type return_type, const std::string &name,
    const std::vector<std::pair<Type, std::string>> &params) {

    std::optional<std::shared_ptr<FuncEntry>> func_ptr = find_func(name);
    if (func_ptr) {
        // Check if the paramter types match with the declaration found
        const std::vector<Type> &param_types = (*func_ptr)->get_param_types();

        // Check if the number of parameters in the declaration and definition
        // match
        if (params.size() != param_types.size())
            Error::semantic_error("Number of parameters in the definition does "
                                  "not match with declaration");

        // Check if the parameter types match
        for (size_t idx = 0; idx < params.size() && idx < param_types.size();
             idx++)
            if (params[idx].first != param_types[idx])
                Error::semantic_error("Types of parameters do not match");

        // Check if and sets function to be implemented
        (*func_ptr)->set_implemented();
    } else {
        // Add the function to the Function Entries
        // funcs.push_back(std::make_shared<FuncEntry>(return_type, name,
        // params, true));
        add_func(return_type, name, params);

        func_ptr = find_func(name);

        // Check if and sets function to be implemented
        (*func_ptr)->set_implemented();
    }

    // Add the Process Symbol Table to the vector of Symbol Tables and set it to
    // be the Current Symbol Table
    procs.push_back(
        std::make_shared<ProcSymbolTable>(*func_ptr, shared_from_this()));
    symtab_stack.push_back(procs.back());

    // Adds parameters to the Current Symbol Table
    for (const std::pair<Type, std::string> &param : params)
        add_param(param.first, param.second);

    if (return_type != Type::VOID) {
        std::shared_ptr<Variable_TAC_Opd> return_tac_opd =
            symtab_stack.back()->getNewSTemp(return_type);
        return_tac_opd->set_type(return_type);
        symtab_stack.back()->set_return_tac_opd(return_tac_opd);
    }
}

std::shared_ptr<ProcSymbolTable> GlobalSymbolTable::new_proc_symtab(
    Type return_type, const std::string &name,
    const std::vector<Type> &param_types,
    const std::vector<std::string> &param_names) {

    std::optional<std::shared_ptr<FuncEntry>> func_ptr = find_func(name);
    // if (func_ptr) {
    //     // Check if the paramter types match with the declaration found
    //     const std::vector<Type> &func_param_types =
    //     (*func_ptr)->get_param_types();
    // } else {
    //     // Fuck you if you reach here!!
    // }

    // Add the Process Symbol Table to the vector of Symbol Tables and set it to
    // be the Current Symbol Table
    procs.push_back(
        std::make_shared<ProcSymbolTable>(*func_ptr, shared_from_this()));
    symtab_stack.push_back(procs.back());

    // Adds parameters to the Current Symbol Table
    // for (const std::pair<Type, std::string> &param : params)
    //     add_param(param.first, param.second);

    for (size_t idx = 0; idx < param_names.size() && idx < param_types.size();
         idx++) {
        add_param(param_types[idx], param_names[idx]);
    }

    if (return_type != Type::VOID) {
        std::shared_ptr<Variable_TAC_Opd> return_tac_opd =
            symtab_stack.back()->getNewSTemp(return_type);
        return_tac_opd->set_type(return_type);
        symtab_stack.back()->set_return_tac_opd(return_tac_opd);
    }

    return symtab_stack.back();
}

void GlobalSymbolTable::pop_stack() { symtab_stack.pop_back(); }

std::shared_ptr<ProcSymbolTable> GlobalSymbolTable::get_curr_proc_symtab() {
    return symtab_stack.back();
}

std::optional<std::shared_ptr<FuncEntry>>
GlobalSymbolTable::find_func(const std::string &name) {
    std::vector<std::shared_ptr<FuncEntry>>::iterator it = std::find_if(
        funcs.begin(), funcs.end(), [&](std::shared_ptr<FuncEntry> entry) {
            return entry->get_name() == name;
        });
    if (it != funcs.end())
        return *it;
    return std::nullopt;
}

std::optional<std::shared_ptr<SymTabEntry>>
GlobalSymbolTable::find_var(const std::string &name) {
    // If the local scope is not global check there
    for (auto iter = symtab_stack.rbegin(); iter != symtab_stack.rend();
         iter++) {
        std::optional<std::shared_ptr<SymTabEntry>> curr_var_ptr =
            (*iter)->find_var(name);
        if (curr_var_ptr)
            return curr_var_ptr;
    }

    // Then check in the global scope too
    std::vector<std::shared_ptr<SymTabEntry>>::iterator it =
        std::find_if(globals.begin(), globals.end(),
                     [&](std::shared_ptr<SymTabEntry> entry) {
                         return entry->get_name() == name;
                     });
    if (it != globals.end())
        return *it;
    return std::nullopt;
}

std::optional<std::shared_ptr<SymTabEntry>>
GlobalSymbolTable::find_local(const std::string &name) {
    if (symtab_stack.size() > 0) {
        // If the local scope is not global, check here
        // for (auto iter = symtab_stack.rbegin(); iter != symtab_stack.rend();
        //  iter++) {
        auto curr_var_ptr = symtab_stack.back()->find_var(name);
        if (curr_var_ptr)
            return curr_var_ptr;
        // }
    } else {
        // Else check in the global scope
        auto it = std::find_if(globals.begin(), globals.end(),
                               [&](std::shared_ptr<SymTabEntry> entry) {
                                   return entry->get_name() == name;
                               });
        if (it != globals.end())
            return *it;
    }
    return std::nullopt;
}

void GlobalSymbolTable::set_offsets() {
    int offset = 0;
    for (std::shared_ptr<SymTabEntry> entry : globals) {
        offset -= get_type_size(entry->get_type());
        entry->set_offset(offset);
    }

    for (std::shared_ptr<ProcSymbolTable> proc : procs) {
        proc->set_offsets(0);
    }
}

void GlobalSymbolTable::func_check() {
    for (std::shared_ptr<FuncEntry> func : funcs) {
        Error::semantic_check(func->is_implemented() || !func->is_call_made(),
                              "Called function is not defined");
    }

    bool main_found = false;

    for (std::shared_ptr<ProcSymbolTable> proc : procs) {
        Error::semantic_check(proc->has_return_stmt() ||
                                  (proc->get_return_type() == Type::VOID),
                              "Non-void function has no return statement");
        if (proc->get_name() == "main")
            main_found = true;
    }
    Error::semantic_check(main_found, "Procedure main does not exist");
}

void GlobalSymbolTable::add_fake_procs(std::shared_ptr<Root_Ast> root_ast) {
    for (std::shared_ptr<FuncEntry> func : funcs) {
        if (!(func->is_implemented())) {
            std::shared_ptr<Func_Ast> func_ast = std::make_shared<Func_Ast>(
                new_proc_symtab(func->get_return_type(), func->get_name(),
                                func->get_param_types(),
                                func->get_param_names()),
                std::make_shared<Sequence_Stmt_Ast>());
            root_ast->add_func(func_ast);
        }
    }
}

void GlobalSymbolTable::print(std::ostream &os, std::string &level) {
    os << "Global Declarations:\n";
    level.push_back(SPACE);
    for (std::shared_ptr<SymTabEntry> entry : globals)
        entry->print(os, level);
    level.pop_back();

    os << "\n";

    sort(procs.begin(), procs.end(), [](auto proc1, auto proc2) {
        return proc1->get_name() < proc2->get_name();
    });

    for (std::shared_ptr<ProcSymbolTable> symtab : procs)
        symtab->print(os, level);
}

int GlobalSymbolTable::addString(std::string str) {
    if (string_map.find(str) != string_map.end())
        return string_map.at(str);
    int id = string_map.size();
    string_map.emplace(str, id);
    return id;
}

void GlobalSymbolTable::add_scope() {
    std::shared_ptr<ProcSymbolTable> child = std::make_shared<ProcSymbolTable>(
        symtab_stack.back()->get_func(), shared_from_this());

    symtab_stack.back()->add_child(child);
    symtab_stack.push_back(child);
}
