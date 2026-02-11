#pragma once

#include "compiler.hh"
#include <string>

class Error {
    friend class Compiler;
    static bool sa_parse;
    static bool sa_scan;

public:
    static bool get_sa_parse();

    static void syntactic_check(bool check, const std::string &msg);

    static void syntactic_error(const std::string &msg);

    static void semantic_check(bool check, const std::string &msg);

    static void semantic_error(const std::string &msg);
};