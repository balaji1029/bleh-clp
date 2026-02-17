#pragma once

#include "compiler.hh"
#include <string>

/* Class to maintain error throws */
class Error {
    friend class Compiler;
    /* Flag bool to stop after parsing */
    static bool sa_parse;

    /* Flag bool to stop after scanning */
    static bool sa_scan;

  public:
    /* Get the sa_parse flag */
    static bool get_sa_parse();

    /* Throw a syntactic error if the `check` is `false` */
    static void syntactic_check(bool check, const std::string &msg);

    /* Throw a syntactic error */
    static void syntactic_error(const std::string &msg);

    /* Throw a semantic error if the `check` is `false` */
    static void semantic_check(bool check, const std::string &msg);

    /* Throw a semantic error */
    static void semantic_error(const std::string &msg);
};