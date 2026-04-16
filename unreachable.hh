#pragma once

#include "tac.hh"

class Unreachable {
    std::shared_ptr<TAC_Code> tac_code;

    std::shared_ptr<GlobalSymbolTable> symtab;

  public:
    Unreachable(std::shared_ptr<TAC_Code>);

    void check_unreachability();
};