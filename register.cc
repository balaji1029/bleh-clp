#include "register.hh"
#include "rtl.hh"

Register::Register(std::string name)
    : name(name), is_free(true), temp(nullptr) {}

std::string Register::get_name() { return name; }

bool Register::isFree() { return is_free; }

void Register::markFree() {
    temp = nullptr;
    is_free = true;
}

std::shared_ptr<Temporary_TAC_Opd> Register::getTemp() { return temp; }

void Register::setTemp(std::shared_ptr<Temporary_TAC_Opd> temp) {
    this->temp = temp;
    is_free = false;
}

RegisterPool::RegisterPool() {
    std::vector<std::string> reg_names = {
        "v0", "t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8",
        "t9", "s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7"};
    std::vector<std::string> arg_reg_names = {"a0", "a1", "a2", "a3"};
    std::vector<std::string> float_reg_names = {
        "f2",  "f4",  "f6",  "f8",  "f10", "f12", "f14", "f16",
        "f18", "f20", "f22", "f24", "f26", "f28", "f30"};
    std::vector<std::string> float_arg_reg_names = {
        "f12", "f14", "f16", "f18", "f20", "f22", "f24", "f26", "f28", "f30"};
    for (const std::string &reg_name : reg_names) {
        regs.push_back(std::make_shared<RTL_Register_Opd>(
            std::make_shared<Register>(reg_name), Type::INT));
    }
    for (const std::string &reg_name : arg_reg_names) {
        arg_regs.push_back(std::make_shared<RTL_Register_Opd>(
            std::make_shared<Register>(reg_name), Type::INT));
    }
    for (const std::string &reg_name : float_reg_names) {
        float_regs.push_back(std::make_shared<RTL_Register_Opd>(
            std::make_shared<Register>(reg_name), Type::FLOAT));
    }
    for (const std::string &reg_name : float_arg_reg_names) {
        float_arg_regs.push_back(std::make_shared<RTL_Register_Opd>(
            std::make_shared<Register>(reg_name), Type::FLOAT));
    }
}

std::shared_ptr<RTL_Register_Opd>
RegisterPool::getTempRegister(std::shared_ptr<Temporary_TAC_Opd> temp) {
    for (auto reg : regs) {
        if (!reg->getReg()->isFree() && reg->getReg()->getTemp() == temp) {
            return reg;
        }
    }
    for (auto reg : arg_regs) {
        if (!reg->getReg()->isFree() && reg->getReg()->getTemp() == temp)
            return reg;
    }
    for (auto reg : float_regs) {
        if (!reg->getReg()->isFree() && reg->getReg()->getTemp() == temp)
            return reg;
    }
    for (auto reg : float_arg_regs) {
        if (!reg->getReg()->isFree() && reg->getReg()->getTemp() == temp)
            return reg;
    }
    return nullptr;
}

void RegisterPool::markTempFree(std::shared_ptr<Temporary_TAC_Opd> temp) {
    auto reg = getTempRegister(temp);
    if (reg)
        reg->getReg()->markFree();
}

std::shared_ptr<RTL_Register_Opd> RegisterPool::getRegister() {
    for (auto reg : regs)
        if (reg->getReg()->isFree()) {
            reg->getReg()->setTemp(nullptr);
            return reg;
        }
    return nullptr;
}

std::shared_ptr<RTL_Register_Opd> RegisterPool::getArgRegister() {
    for (auto reg : arg_regs)
        if (reg->getReg()->isFree()) {
            reg->getReg()->setTemp(nullptr);
            return reg;
        }
    return nullptr;
}

std::shared_ptr<RTL_Register_Opd> RegisterPool::getFloatRegister() {
    for (auto reg : float_regs)
        if (reg->getReg()->isFree()) {
            reg->getReg()->setTemp(nullptr);
            return reg;
        }
    return nullptr;
}

std::shared_ptr<RTL_Register_Opd> RegisterPool::getFloatArgRegister() {
    for (auto reg : float_arg_regs)
        if (reg->getReg()->isFree()) {
            reg->getReg()->setTemp(nullptr);
            return reg;
        }
    return nullptr;
}

std::shared_ptr<RTL_Register_Opd> RegisterPool::getV0() {
    for (auto reg : regs)
        if (reg->getReg()->get_name() == "v0") {
            // TODO: handle properly
            reg->getReg()->setTemp(nullptr);
            return reg;
        }
    return nullptr;
}