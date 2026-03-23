#pragma once

#include <memory>
#include <string>
#include <vector>

class Temporary_TAC_Opd;

class Register {
    std::string name;
    bool is_free;
    std::shared_ptr<Temporary_TAC_Opd> temp;

  public:
    Register(std::string name);
    std::string get_name();
    bool isFree();
    void markFree();
    void markUse();
    std::shared_ptr<Temporary_TAC_Opd> getTemp();
    void setTemp(std::shared_ptr<Temporary_TAC_Opd>);
};

class RegisterPool {
    std::vector<std::shared_ptr<Register>> regs;
    std::vector<std::shared_ptr<Register>> arg_regs;
    std::vector<std::shared_ptr<Register>> float_regs;

  public:
    RegisterPool();

    std::shared_ptr<Register>
        getTempRegister(std::shared_ptr<Temporary_TAC_Opd>);

    void markTempFree(std::shared_ptr<Temporary_TAC_Opd>);

    std::shared_ptr<Register> getRegister();

    std::shared_ptr<Register> getArgRegister();

    std::shared_ptr<Register> getFloatRegister();
};