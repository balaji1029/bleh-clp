#pragma once

#include <iostream>

class Asm {
  public:
    virtual void print(std::ostream &) = 0;
};