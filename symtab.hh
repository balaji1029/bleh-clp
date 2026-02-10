#pragma once

#include <algorithm>
#include <memory>
#include <optional>
#include <string>
#include <vector>

#define SPACE '\t'

enum class Type { INT, BOOL, FLOAT, STRING, VOID, ASIAN };

std::string get_type_str(Type);

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
    SymTabEntry(Type type, const std::string &name);

    std::string get_name();
    Type get_type();
};

class ProcSymbolTable {
    std::string name;
    Type return_type;
    std::vector<std::shared_ptr<SymTabEntry>> params;
    std::vector<std::shared_ptr<SymTabEntry>> locals;

  public:
    ProcSymbolTable(Type, const std::string &);
    void add_param(Type type, const std::string &);
    void add_local(Type type, const std::string &);
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);
};

class GlobalSymbolTable {
    std::shared_ptr<ProcSymbolTable> curr_symtab;
    std::vector<std::shared_ptr<SymTabEntry>> globals;
    std::vector<std::shared_ptr<ProcSymbolTable>> procs;

  public:
    void new_proc_symtab(Type, const std::string &);
    void add_param(Type, const std::string &);
    void add_var(Type, const std::string &);

    std::shared_ptr<ProcSymbolTable> get_curr_proc_symtab();
    std::optional<std::shared_ptr<SymTabEntry>> find_var(const std::string &);
};
