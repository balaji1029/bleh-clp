#pragma once

#include <memory>
#include <string>
#include <vector>

class Temporary_TAC_Opd;

class RTL_Register_Opd;

class Register {
    std::string name;
    bool is_free;
    std::shared_ptr<Temporary_TAC_Opd> temp;

  public:
    Register(std::string name);
    std::string get_name();
    bool isFree();
    void markFree();
    std::shared_ptr<Temporary_TAC_Opd> getTemp();
    void setTemp(std::shared_ptr<Temporary_TAC_Opd>);
};

class RegisterPool {
    std::shared_ptr<RTL_Register_Opd> f0;
    std::vector<std::shared_ptr<RTL_Register_Opd>> regs;
    std::vector<std::shared_ptr<RTL_Register_Opd>> arg_regs;
    std::vector<std::shared_ptr<RTL_Register_Opd>> float_regs;
    std::vector<std::shared_ptr<RTL_Register_Opd>> float_arg_regs;

  public:
    RegisterPool();
    std::shared_ptr<RTL_Register_Opd>
        getTempRegister(std::shared_ptr<Temporary_TAC_Opd>);
    void markTempFree(std::shared_ptr<Temporary_TAC_Opd>);
    std::shared_ptr<RTL_Register_Opd> getRegister();
    std::shared_ptr<RTL_Register_Opd> getArgRegister();
    std::shared_ptr<RTL_Register_Opd> getFloatRegister();
    std::shared_ptr<RTL_Register_Opd> getFloatArgRegister();
    std::shared_ptr<RTL_Register_Opd> getV0();
    std::shared_ptr<RTL_Register_Opd> getF0();
};