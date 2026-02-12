#pragma once

#include <algorithm>
#include <memory>
#include <optional>
#include <string>
#include <vector>
#include <set>

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
    const Type return_type;
    const std::string name;
    std::vector<Type> param_types;
    std::set<std::string> param_names;

  public:
    FuncEntry(Type, const std::string &, const std::vector<std::pair<Type, std::string>> &);
    Type get_return_type() const;
    const std::string &get_name() const;
    const std::vector<Type> &get_param_types() const;
};

class ProcSymbolTable {
    std::string name;
    Type return_type;
    std::vector<std::shared_ptr<SymTabEntry>> params;
    std::vector<std::shared_ptr<SymTabEntry>> locals;

  public:
    ProcSymbolTable(Type, const std::string &);
    void add_param(Type, const std::string &);
    void add_local(Type, const std::string &);
    const std::string &get_name();
    Type get_return_type();
    const std::vector<std::shared_ptr<SymTabEntry>> &get_params();
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);
};

class GlobalSymbolTable {
    std::shared_ptr<ProcSymbolTable> curr_symtab;
    std::vector<std::shared_ptr<FuncEntry>> funcs;
    std::vector<std::shared_ptr<SymTabEntry>> globals;
    std::vector<std::shared_ptr<ProcSymbolTable>> procs;

  public:
    void add_param(Type, const std::string &);
    void add_var(Type, const std::string &);
    void add_func(Type, const std::string &, const std::vector<std::pair<Type, std::string>> &);
    void new_proc_symtab(Type, const std::string &, const std::vector<std::pair<Type, std::string>> &);
    void go_global();

    std::shared_ptr<ProcSymbolTable> get_curr_proc_symtab();
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);
    std::optional<std::shared_ptr<SymTabEntry>> find_local(const std::string &);
};
