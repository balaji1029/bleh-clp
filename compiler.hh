#pragma once

#include "ast.hh"
#include "lexer.hh"
#include "symtab.hh"
#include "utils.hh"
#include <fstream>
#include <getopt.h>
#include <iostream>
#include <string>

#include "y.tab.h"

#define ERROR                                                                  \
    "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp "     \
    "--usage' for more information."

struct flags_t {
    bool show_tokens = false;
    bool show_ast = false;
    bool show_tac = false;
    bool show_symtab = false;
    bool show_rtl = false;

    bool sa_scan = false;
    bool sa_parse = false;
    bool sa_ast = false;
    bool sa_tac = false;
    bool sa_rtl = false;

    bool demo = false;
};

/* Main Class for the whole Compiler */
class Compiler {
    flags_t flags;

    std::string input_filename;
    std::string output_token_filename;
    std::string output_ast_filename;
    std::string output_tac_filename;
    std::string output_symtab_filename;
    std::string output_rtl_filename;
    std::string output_spim_filename;

    std::ifstream input_file;
    std::ofstream output_token_file;
    std::ofstream output_ast_file;
    std::ofstream output_tac_file;
    std::ofstream output_symtab_file;
    std::ofstream output_rtl_file;
    std::ofstream output_spim_file;

    std::shared_ptr<GlobalSymbolTable> sym_tab;
    std::shared_ptr<Root_Ast> root_ast;

    Lexer lexer;

  public:
    /* Constructor with the arguments given to the main function */
    Compiler(int, char *[]);

    /* Runs the compiler according to the flags */
    int run();

    /* Scans the code given as input */
    int scan();

    /* Parse the code given as input */
    int parse();

    void output(std::string);
};