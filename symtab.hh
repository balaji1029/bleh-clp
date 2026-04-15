#pragma once

#include <algorithm>
#include <memory>
#include <optional>
#include <set>
#include <string>
#include <unordered_map>
#include <vector>

#include "register.hh"

class Label_TAC_Opd;
class Variable_TAC_Opd;
class GlobalSymbolTable;
class ASM_Code;
class ASM_Label_Opd;
class Root_Ast;

/* Type of variable */
enum class Type { INT, BOOL, FLOAT, STRING, VOID };

/* Gets the string type of the enum `Type` */
std::string get_type_str(Type);

std::ostream &operator<<(std::ostream &, Type);

/* Entity type of a Symbol Table Entry */
enum class EntityType { VAR, FUNC, TEMP };

int get_type_size(Type type);

/* Class for entries in Symbol Table */
class SymTabEntry {
    /* The type of the variable  */
    const Type type;

    /* The name of the variable */
    const std::string name;

    /* bool to check if the offset is set */
    std::optional<int> offset;
    int size;
    EntityType entity_type;

    bool global;

  public:
    SymTabEntry(Type, const std::string &, bool = false);

    std::string get_name();
    Type get_type();

    void set_offset(int);

    std::optional<int> get_offset() const { return offset; }

    void print(std::ostream &, const std::string &);

    bool is_global() { return global; }
};

/* Class for Function entries in the Global Symbol Table */
class FuncEntry {
    /* The return type of the function */
    const Type return_type;

    /* The name of the function */
    const std::string name;

    /* The vector of types of the parameters of the function */
    std::vector<Type> param_types;

    std::vector<std::string> param_names;

    /* The bool to check if the function is implemented */
    bool implemented;

    bool call_made;

    std::optional<std::shared_ptr<Label_TAC_Opd>> return_label;

  public:
    /* Creates a FuncEntry from the return type, the function name, and a vector
     * of pair of type and the parameter name, should also check if there exists
     * a function with one of the parameter names */
    FuncEntry(Type, const std::string &,
              const std::vector<std::pair<Type, std::string>> &, bool = false);

    /* Gets the return type of the function */
    Type get_return_type() const;

    /* Gets the name of the function */
    const std::string &get_name() const;

    /* Gets the vector of parameter types of the function */
    const std::vector<Type> &get_param_types() const;

    const std::vector<std::string> &get_param_names() const;

    void set_implemented();
    void set_call_made();
    bool is_implemented() const;
    bool is_call_made() const;
    void set_return_label();
    std::optional<std::shared_ptr<Label_TAC_Opd>> get_return_label() const;
};

/* Class for Process Symbol Table */
class ProcSymbolTable {
    /* The Pointer to the Symbol Table Entry for the function */
    const std::shared_ptr<FuncEntry> func_entry;

    /* The vector of the pointers to the Symbol Table Entries of the parameters
     * in the Process Symbol Table */
    std::vector<std::shared_ptr<SymTabEntry>> params;

    /* The vector of the pointers to the Symbol Table Entries of the local
     * variables in the Process Symbol Table */
    std::vector<std::shared_ptr<SymTabEntry>> locals;

    std::shared_ptr<RegisterPool> register_pool;

    std::shared_ptr<Variable_TAC_Opd> return_tac_opd;

    std::weak_ptr<GlobalSymbolTable> global_symtab;

    std::vector<std::shared_ptr<ProcSymbolTable>> children;

    int num_temps = 0;

    int num_stemps = 0;

    bool return_stmt = false;

    int total_offset = 0;

  public:
    /* Creates a Process Symbol Table from the pointer to the Symbol Table Entry
     * for the function */
    ProcSymbolTable(std::shared_ptr<FuncEntry>,
                    std::shared_ptr<GlobalSymbolTable>);

    /* Adds a parameter to the Process Symbol Table from the type and the name
     * of the parameter name */
    void add_param(Type, const std::string &);

    /* Adds a local variable to the Process Symbol Table from the type and the
     * name of the parameter name */
    void add_local(Type, const std::string &);

    void add_return_stmt();

    bool has_return_stmt() const;

    std::shared_ptr<Variable_TAC_Opd> get_return_tac_opd();

    void set_return_tac_opd(std::shared_ptr<Variable_TAC_Opd>);

    /* Gets the name of the function related to the Process Symbol Table */
    const std::string &get_name();

    /* Gets the return type of the function related to the Process Symbol Table
     */
    Type get_return_type();

    std::optional<std::shared_ptr<Label_TAC_Opd>> get_return_label();

    /* Gets the vector of pointers to the parameters' entries in the Process
     * Symbol Table */
    const std::vector<std::shared_ptr<SymTabEntry>> &get_params();

    /* Finds and returns the optional pointer to the variable with the name */
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);

    std::shared_ptr<Temporary_TAC_Opd> getNewTemp();

    std::shared_ptr<Variable_TAC_Opd> getNewSTemp(Type);

    std::shared_ptr<RegisterPool> getRegisterPool();

    void set_offsets(int);

    int addString(std::string);

    void print(std::ostream &, std::string &, bool = true);

    std::shared_ptr<GlobalSymbolTable> getGlobalSymtab();

    std::shared_ptr<ASM_Code> get_asm_prologue();

    std::shared_ptr<ASM_Code> get_asm_epilogue();

    std::shared_ptr<ASM_Label_Opd> get_epilogue_label();

    bool is_phantom() { return !(func_entry->is_implemented()); }

    void add_child(std::shared_ptr<ProcSymbolTable>);

    std::shared_ptr<FuncEntry> get_func() { return func_entry; }

    int get_total_offset() { return total_offset; }
};

/* Class for Global Symbol Table */
class GlobalSymbolTable
    : public std::enable_shared_from_this<GlobalSymbolTable> {
    /* The pointer to the current Symbol Table, the one being filled right now
     */
    // std::shared_ptr<ProcSymbolTable> curr_symtab;

    std::vector<std::shared_ptr<ProcSymbolTable>> symtab_stack;

    /* The vector of pointers to the Function Symbol Table Entries */
    std::vector<std::shared_ptr<FuncEntry>> funcs;

    /* The vector of pointers to the Global variable Symbol Table Entries */
    std::vector<std::shared_ptr<SymTabEntry>> globals;

    /* The vector of Process Symbol Tables */
    std::vector<std::shared_ptr<ProcSymbolTable>> procs;

    std::unordered_map<std::string, int> string_map;

  public:
    /* Adds parameter to the current Process Symbol Table after checking if
     * the parameter name exists in the function names or the previously
     * defined parameter names */
    void add_param(Type, const std::string &);

    /* Adds variable to the current Process Symbol Table (or the Global
     * variables) after checking if the variable name exists in the previously
     * defined functions or the Global variables */
    void add_var(Type, const std::string &);

    /* Adds a function to the Function Symbol Table upon being declared for the
     * first time */
    void add_func(Type, const std::string &,
                  const std::vector<std::pair<Type, std::string>> &);

    /* Creates a new Process Symbol Table after checking if a Function was
     * declared with the name (otherwise declare it) and if there was already an
     * implementation, raise an error */
    void new_proc_symtab(Type, const std::string &,
                         const std::vector<std::pair<Type, std::string>> &);

    std::shared_ptr<ProcSymbolTable>
    new_proc_symtab(Type, const std::string &, const std::vector<Type> &,
                    const std::vector<std::string> &);

    /* Sets the curr_symtab to `std::nullopt` to indicate the current scop to be
     * global */
    void pop_stack();

    // TODO: Strings in Global Symbol Table

    // void add_string(std::string);

    // std::optional<int> find_string() const;

    /* Gets the pointer to the current scope */
    std::shared_ptr<ProcSymbolTable> get_curr_proc_symtab();

    std::vector<std::shared_ptr<FuncEntry>> get_funcs() const;

    const std::vector<std::shared_ptr<SymTabEntry>> &get_globals() {
        return globals;
    }

    /* Finds and returns an `std::optional` if there exists a function of the
     * given name in the Function Symbol Table Entries */
    std::optional<std::shared_ptr<FuncEntry>> find_func(const std::string &);

    /* Finds and returns an `std::optional` if there exists a variable of given
     * name in the reachable scope */
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);

    /* Finds and returns an `std::optional` if there exists a variable of the
     * given name only in the current scope */
    std::optional<std::shared_ptr<SymTabEntry>> find_local(const std::string &);

    void add_fake_procs(std::shared_ptr<Root_Ast>);

    void set_offsets();

    void func_check();

    void print(std::ostream &, std::string &);

    int addString(std::string);

    void print_asm_globals(std::ostream &);

    void add_scope();
};
