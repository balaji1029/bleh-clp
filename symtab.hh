#pragma once

#include <memory>
#include <string>
#include <vector>

enum class Type { INT, BOOL, FLOAT, STRING, VOID };

enum class EntityType { VAR, FUNC, TEMP };

class SymTabParam {
    Type a;
    std::string name;
    bool offset_set;
    int offset;
    int size;
    EntityType entity_type;

  public:
    SymTabParam(Type a, std::string name)
        : a{a}, name{name}, offset_set{false}, offset{}, size{}, entity_type{EntityType::VAR} {}
};

class ProcSymbolTable {
    std::vector<SymTabParam> params;
};

class GlobalSymbolTable {
    std::vector<std::unique_ptr<ProcSymbolTable>> procs;
};
