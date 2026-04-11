#pragma once

#include <map>

#include "tac.hh"

class Params {
  public:
    std::set<std::string> in, out;
};

class BackwardFlowAnalysis {
    std::shared_ptr<TAC_Code> tac_code;
    // std::vector<std::shared_ptr<TAC_Stmt>> code;

    std::map<std::shared_ptr<TAC_Stmt>, std::shared_ptr<Params>> inout;

    bool lines_removed = true;

  public:
    BackwardFlowAnalysis(std::shared_ptr<TAC_Code>);

    void doAnalysis();

    void remove_lines();

    void build_label_map();
};