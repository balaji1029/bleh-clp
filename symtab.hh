#pragma once

#include <algorithm>
#include <memory>
#include <optional>
#include <set>
#include <string>
#include <vector>

#define SPACE '\t'

enum class Type { INT, BOOL, FLOAT, STRING, VOID, ASIAN };

std::string get_type_str(Type);

std::ostream &operator<<(std::ostream &, Type);

const Type get_type_enum(std::string);

enum class EntityType { VAR, FUNC, TEMP };

class SymTabEntry {
    const Type type;
    const std::string name;
    bool offset_set;
    int offset;
    int size;
    EntityType entity_type;

  public:
    SymTabEntry(Type, const std::string &);

    std::string get_name();
    Type get_type();
};

class FuncEntry {
    /* The return type of the function */
    const Type return_type;

    /* The name of the function */
    const std::string name;

    /* The vector of types of the parameters of the function */
    std::vector<Type> param_types;

    /* The bool to check if the function is implemented */
    bool implemented;

  public:
    /* Creates a FuncEntry from the return type, the function name, and a vector of pair of type and the parameter name,
     * should also check if there exists a function with one of the parameter names */
    FuncEntry(Type, const std::string &, const std::vector<std::pair<Type, std::string>> &, bool = false);

    /* Gets the return type of the function */
    Type get_return_type() const;

    /* Gets the name of the function */
    const std::string &get_name() const;

    /* Gets the vector of parameter types of the function */
    const std::vector<Type> &get_param_types() const;
    void set_implemented();
    bool is_implemented() const;
};

class ProcSymbolTable {

    /* The name of the function related to this symbol table */
    std::string name;

    /* The return type of the function related to this symbol table */
    Type return_type;

    /* The vector of the pointers to the Symbol Table Entries of the parameters in the Process Symbol Table */
    std::vector<std::shared_ptr<SymTabEntry>> params;

    /* The vector of the pointers to the Symbol Table Entries of the local variables in the Process Symbol Table */
    std::vector<std::shared_ptr<SymTabEntry>> locals;

  public:
    /* Creates a Process Symbol Table from the return type and the function name */
    ProcSymbolTable(Type, const std::string &);

    /* Adds a parameter to the Process Symbol Table from the type and the name of the parameter name */
    void add_param(Type, const std::string &);

    /* Adds a local variable to the Process Symbol Table from the type and the name of the parameter name */
    void add_local(Type, const std::string &);

    /* Gets the name of the function related to the Process Symbol Table */
    const std::string &get_name();

    /* Gets the return type of the function related to the Process Symbol Table */
    Type get_return_type();

    /* Gets the vector of pointers to the parameters' entries in the Process Symbol Table */
    const std::vector<std::shared_ptr<SymTabEntry>> &get_params();

    /* Finds and returns the optional pointer to the variable with the name */
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);
};

class GlobalSymbolTable {

    /* The pointer to the current Symbol Table, the one being filled right now */
    std::shared_ptr<ProcSymbolTable> curr_symtab;

    /* The vector of pointers to the Function Symbol Table Entries */
    std::vector<std::shared_ptr<FuncEntry>> funcs;

    /* The vector of pointers to the Global variable Symbol Table Entries */
    std::vector<std::shared_ptr<SymTabEntry>> globals;

    /* The vector of Process Symbol Tables */
    std::vector<std::shared_ptr<ProcSymbolTable>> procs;

  public:
    /* Adds parameter to the current Process Symbol Table after checking the parameter  */
    void add_param(Type, const std::string &);
    void add_var(Type, const std::string &);
    void add_func(Type, const std::string &, const std::vector<std::pair<Type, std::string>> &);
    void new_proc_symtab(Type, const std::string &, const std::vector<std::pair<Type, std::string>> &);
    void go_global();

    std::shared_ptr<ProcSymbolTable> get_curr_proc_symtab();
    std::optional<std::shared_ptr<FuncEntry>> find_func(const std::string &);
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);
    std::optional<std::shared_ptr<SymTabEntry>> find_local(const std::string &);
};
