// #include <iostream>
#include <stdio.h>
#include <cstring>
#include <getopt.h>
#include "lex.yy.h"
#include "parser.tab.h"

extern FILE *yyin; // This is the file pointer from which the scanner
// will read the input. It is declared in lex.yy.c.
extern FILE *tok_out;

extern bool show_tokens;

extern int yyparse();

#define ERROR "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp --usage' for more information.\n"

void process_command_options(int argc, char * argv[])
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
    if (show_tokens) tok_out = fopen(strcat(argv[optind], ".toks"), "w");
    if (!yyin) {
        perror("fopen");
        exit(1);
    }
}

int main(int argc, char * argv[])
{
    int status;
    // Process the comm
    // and line options
    process_command_options(argc, argv);
    // Executing the parser
    status = yyparse();

    fclose(yyin);
    if (show_tokens) fclose(tok_out);
    return status;
}