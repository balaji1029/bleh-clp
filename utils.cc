#include "utils.hh"

bool Error::sa_parse = false;
bool Error::sa_scan = false;
bool Error::sa_ast = false;

bool Error::get_sa_parse() { return sa_parse; }

void Error::syntactic_check(bool check, const std::string &err_msg) {
    if (!check) {
        std::cerr << err_msg << std::endl;
        exit(EXIT_FAILURE);
    }
}

void Error::syntactic_error(const std::string &err_msg) {
    std::cerr << err_msg << std::endl;
    exit(EXIT_FAILURE);
}

void Error::semantic_check(bool check, const std::string &err_msg) {
    if (!get_sa_parse() && !check) {
        std::cerr << err_msg << std::endl;
        exit(EXIT_FAILURE);
    }
}

void Error::semantic_error(const std::string &err_msg) {
    if (!get_sa_parse()) {
        std::cerr << err_msg << std::endl;
        exit(EXIT_FAILURE);
    }
}