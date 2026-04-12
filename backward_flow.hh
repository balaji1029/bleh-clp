#pragma once

#include <map>

#include "tac.hh"

class Params {
  public:
    std::set<std::variant<std::shared_ptr<SymTabEntry>, int>> in, out;
};

class BackwardFlowAnalysis {
    std::shared_ptr<TAC_Code> tac_code;
    std::shared_ptr<GlobalSymbolTable> symtab;
    // std::vector<std::shared_ptr<TAC_Stmt>> code;

    std::map<std::shared_ptr<TAC_Stmt>, std::shared_ptr<Params>> inout;

    bool lines_removed = true;

  public:
    BackwardFlowAnalysis(std::shared_ptr<TAC_Code>, std::shared_ptr<GlobalSymbolTable>);

    void doAnalysis();

    void remove_lines();

    void build_label_map();
};