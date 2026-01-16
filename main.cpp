#include <iostream>
#include <cstdio>

extern FILE *yyin; // This is the file pointer from which the scanner
// will read the input. It is declared in lex.yy.c.

extern int yyparse();

void process_command_options(int argc, char * argv[])
{
    // If a file name is contained in argv, open it using
    // fopen and assign the file pointer to yyin.
    // Check if --show-tokens option has been given. If
    // it has been given, your scanner script should
    // print the information required for the dump.
    // There is no need to implement the -d option.
    if (argc >= 2) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("fopen");
            exit(1);
        }
    }
    if (argc < 2) {
        std::cerr << "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp --usage' for more information.\n";
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

    return status;
}