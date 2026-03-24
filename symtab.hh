#pragma once

#include <algorithm>
#include <memory>
#include <optional>
#include <set>
#include <string>
#include <vector>

#include "tac.hh"

class Temporary_TAC_Opd;

/* Type of variable */
enum class Type { INT, BOOL, FLOAT, STRING, VOID };

/* Gets the string type of the enum `Type` */
std::string get_type_str(Type);

std::ostream &operator<<(std::ostream &, Type);

/* Entity type of a Symbol Table Entry */
enum class EntityType { VAR, FUNC, TEMP };

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

  public:
    SymTabEntry(Type, const std::string &);

    std::string get_name();
    Type get_type();

    void print(std::ostream&, const std::string&);
};

/* Class for Function entries in the Global Symbol Table */
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
    void set_implemented();
    bool is_implemented() const;
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

    int num_temps = 0;

    int num_stemps = 0;

  public:
    /* Creates a Process Symbol Table from the pointer to the Symbol Table Entry
     * for the function */
    ProcSymbolTable(std::shared_ptr<FuncEntry>);

    /* Adds a parameter to the Process Symbol Table from the type and the name
     * of the parameter name */
    void add_param(Type, const std::string &);

    /* Adds a local variable to the Process Symbol Table from the type and the
     * name of the parameter name */
    void add_local(Type, const std::string &);

    /* Gets the name of the function related to the Process Symbol Table */
    const std::string &get_name();

    /* Gets the return type of the function related to the Process Symbol Table
     */
    Type get_return_type();

    /* Gets the vector of pointers to the parameters' entries in the Process
     * Symbol Table */
    const std::vector<std::shared_ptr<SymTabEntry>> &get_params();

    /* Finds and returns the optional pointer to the variable with the name */
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);

    std::shared_ptr<Temporary_TAC_Opd> getNewTemp();

    std::shared_ptr<Temporary_TAC_Opd> getNewSTemp();

    void print(std::ostream&, std::string&);
};

/* Class for Global Symbol Table */
class GlobalSymbolTable {
    /* The pointer to the current Symbol Table, the one being filled right now
     */
    std::shared_ptr<ProcSymbolTable> curr_symtab;

    /* The vector of pointers to the Function Symbol Table Entries */
    std::vector<std::shared_ptr<FuncEntry>> funcs;

    /* The vector of pointers to the Global variable Symbol Table Entries */
    std::vector<std::shared_ptr<SymTabEntry>> globals;

    /* The vector of Process Symbol Tables */
    std::vector<std::shared_ptr<ProcSymbolTable>> procs;

  public:
    /* Adds parameter to the current Process Symbol Table after checking if the
     * parameter name exists in the function names or the previously defined
     * parameter names */
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

    /* Sets the curr_symtab to `std::nullopt` to indicate the current scop to be
     * global */
    void go_global();

    /* Gets the pointer to the current scope */
    std::shared_ptr<ProcSymbolTable> get_curr_proc_symtab();

    /* Finds and returns an `std::optional` if there exists a function of the
     * given name in the Function Symbol Table Entries */
    std::optional<std::shared_ptr<FuncEntry>> find_func(const std::string &);

    /* Finds and returns an `std::optional` if there exists a variable of given
     * name in the reachable scope */
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);

    /* Finds and returns an `std::optional` if there exists a variable of the
     * given name only in the current scope */
    std::optional<std::shared_ptr<SymTabEntry>> find_local(const std::string &);

    void print(std::ostream&, std::string&);
};
