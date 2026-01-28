#include <string>
#include <iostream>
#include <fstream>
#include <getopt.h>
#include "lexer.hh"
#include "parser.tab.hh"

#define ERROR "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp --usage' for more information."

void process_command_options(int argc, char * argv[], bool& show_tokens,std::string& input_filename, std::string& token_output_filename)
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
                std::cerr << ERROR << std::endl;
                exit(1);
        }
    }

    if (optind >= argc) {
        std::cerr << ERROR << std::endl;
        exit(1);
    }

    if (optind + 1 < argc) {
        std::cerr << ERROR << std::endl;
        exit(1);
    }
    input_filename = std::string(argv[optind]);
    token_output_filename += std::string(argv[optind]) + ".toks";
}

int main(int argc, char * argv[])
{
    int status;
    bool show_tokens;
    std::string input_filename;
    std::string token_output_filename;
    // Process the comm
    // and line options
    process_command_options(argc, argv, show_tokens, input_filename, token_output_filename);

    std::ifstream input_file(input_filename);
    Lexer lexer(&input_file);

    yy::parser parser(lexer);
    status = parser.parse();
    // Executing the parser
    // status = yyparse();
    if (show_tokens) {
        std::ofstream token_file(token_output_filename);
        token_file << lexer.token_output << std::flush;
    }

    // std::cout << token_output << std::flush;

    // fclose(yyin);
    // if (show_tokens) fclose(tok_out);
    return status;
}