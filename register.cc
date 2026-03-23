#include "register.hh"

Register::Register(std::string name)
    : name(name), is_free(true), temp(nullptr) {}

std::string Register::get_name() { return name; }

bool Register::isFree() { return is_free; }

void Register::markFree() { is_free = true; }

void Register::markUse() { is_free = false; }

std::shared_ptr<Temporary_TAC_Opd> Register::getTemp() { return temp; }

void Register::setTemp(std::shared_ptr<Temporary_TAC_Opd> temp) {
    this->temp = temp;
}

RegisterPool::RegisterPool() {
    std::vector<std::string> reg_names = {"t0", "v0", "t1", "t2"};
    std::vector<std::string> arg_reg_names = {"a0", "a1", "a2"};
    std::vector<std::string> float_reg_names = {"f2", "f4", "f6"};
    for (const std::string &reg_name : reg_names) {
        regs.push_back(std::make_shared<Register>(reg_name));
    }
    for (const std::string &reg_name : arg_reg_names) {
        arg_regs.push_back(std::make_shared<Register>(reg_name));
    }
    for (const std::string &reg_name : float_reg_names) {
        float_regs.push_back(std::make_shared<Register>(reg_name));
    }
}

std::shared_ptr<Register>
RegisterPool::getTempRegister(std::shared_ptr<Temporary_TAC_Opd> temp) {
    for (auto reg : regs) {
        if (!reg->isFree() && reg->getTemp() == temp)
            return reg;
    }
    for (auto reg : arg_regs) {
        if (!reg->isFree() && reg->getTemp() == temp)
            return reg;
    }
    for (auto reg : float_regs) {
        if (!reg->isFree() && reg->getTemp() == temp)
            return reg;
    }
    return nullptr;
}

std::shared_ptr<Register> RegisterPool::getRegister() {
    for (auto reg : regs)
        if (reg->isFree())
            return reg;
    return nullptr;
}

std::shared_ptr<Register> RegisterPool::getArgRegister() {
    for (auto reg : arg_regs)
        if (reg->isFree())
            return reg;
    return nullptr;
}

std::shared_ptr<Register> RegisterPool::getFloatRegister() {
    for (auto reg : float_regs)
        if (reg->isFree())
            return reg;
    return nullptr;
}