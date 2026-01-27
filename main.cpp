// #include <iostream>
#include <stdio.h>
#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <getopt.h>
#include "lex.yy.h"
#include "parser.tab.hh"

extern FILE *yyin; // This is the file pointer from which the scanner
// will read the input. It is declared in lex.yy.c.
// extern FILE *tok_out;

extern std::string token_output;

// extern bool show_tokens;

// extern int yyparse();

#define ERROR "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp --usage' for more information.\n"

void process_command_options(int argc, char * argv[], bool& show_tokens, std::string& token_output_filename)
{
    // If a file name is contained in argv, open it using
    // fopen and assign the file pointer to yyin.
    // Check if --show-tokens option has been given. If
    // it has been given, your scanner script should
    // print the information required for the dump.
    // There is no need to implement the -d option.

    int opt;

    static struct option long_opts[] = {
        {"show-tokens", no_argument, 0, 't'},
        {0, 0, 0, 0}
    };

    while ((opt = getopt_long(argc, argv, "t", long_opts, NULL)) != -1) {
        switch (opt) {
            case 't':
                show_tokens = true;
                break;
            default:
                fprintf(stderr, ERROR);
                exit(1);
        }
    }

    if (optind >= argc) {
        fprintf(stderr, ERROR);
        exit(1);
    }

    if (optind + 1 < argc) {
        fprintf(stderr, ERROR);
        exit(1);
    }
    yyin = fopen(argv[optind], "r");
    token_output_filename += std::string(argv[optind]) + ".toks";
}

int main(int argc, char * argv[])
{
    int status;
    bool show_tokens;
    std::string token_output_filename;
    // Process the comm
    // and line options
    process_command_options(argc, argv, show_tokens, token_output_filename);

    yy::parser parser;
    int result = parser.parse();
    // Executing the parser
    // status = yyparse();
    if (show_tokens) {
        std::ofstream token_file(token_output_filename);
        token_file << token_output << std::flush;
    }

    // std::cout << token_output << std::flush;

    fclose(yyin);
    // if (show_tokens) fclose(tok_out);
    return status;
}