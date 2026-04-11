#pragma once

#include "tac.hh"

class Basic_Block {
    std::shared_ptr<TAC_Code> code;

public:
    Basic_Block();
};

class Cfg {
    std::shared_ptr<TAC_Code> code;

    Cfg(std::shared_ptr<TAC_Code>);

    void mark_leaders();

    void build_cfg();
};