#pragma once

#include <memory>
#include <string>
#include <vector>

#define SPACE '\t'

enum class Type { INT, BOOL, FLOAT, STRING, VOID };

const std::string& get_type_str(Type);

const Type get_type_enum(std::string);

enum class EntityType { VAR, FUNC, TEMP };

class SymTabEntry {
    Type a;
    std::string name;
    bool offset_set;
    int offset;
    int size;
    EntityType entity_type;

  public:
    SymTabEntry(Type a, std::string name);

    std::string get_name();
    Type get_type();
};

class ProcSymbolTable {
    std::vector<std::shared_ptr<SymTabEntry>> params;
    std::vector<std::shared_ptr<SymTabEntry>> locals;

public:
    void add_param(std::string, std::string);
    void add_local(std::string, std::string);
};

class GlobalSymbolTable {
    std::vector<std::shared_ptr<ProcSymbolTable>> procs;
};
