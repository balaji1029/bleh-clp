#pragma once

#include "ast.hh"
#include "lexer.hh"
#include "symtab.hh"
#include <fstream>
#include <getopt.h>
#include <iostream>
#include <string>

#include "y.tab.h"

#define ERROR "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp --usage' for more information."

struct flags_t {
    bool show_tokens = false;
    bool show_ast = false;

    bool sa_scan = false;
    bool sa_parse = false;

    bool demo = false;
};

class Compiler {
    flags_t flags;

    std::string input_filename;
    std::string output_token_filename;

    std::ifstream input_file;
    std::ofstream output_token_file;
    std::shared_ptr<GlobalSymbolTable> sym_tab;
    std::shared_ptr<Root_Ast> root_ast;

    Lexer lexer;

  public:
    Compiler(int, char *[]);
    int run();
    int scan();
    int parse();
    void output(std::string);
};