#pragma once

#include <memory>
#include <string>
#include <vector>

enum class Type { 
    INT, BOOL, FLOAT, STRING, VOID, ASIAN,
};

std::string get_type_str(Type);

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
    std::vector<SymTabEntry> params;
};

class GlobalSymbolTable {
    std::vector<std::unique_ptr<ProcSymbolTable>> procs;
};
