#include "compiler.hh"

Compiler::Compiler (int argc, char* argv[]) : lexer(&input_file) {
    int opt;

    static struct option long_opts[] = {
        {"show-tokens", no_argument, 0, 't'},
        {0, 0, 0, 0}
    };

    while ((opt = getopt_long(argc, argv, "t", long_opts, NULL)) != -1) {
        switch (opt) {
            case 't':
                flags.show_tokens = true;
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
    output_token_filename = input_filename + ".toks";

    input_file.open(input_filename);

    if (flags.show_tokens) output_token_file.open(output_token_filename);
}

int Compiler::parse() {
    int status;

    if (!input_file.is_open()) {
        std::cerr << "File not open!! :(" << std::endl;
    }

    yy::parser parser(lexer);

    status = parser.parse();

    if (flags.show_tokens) output_token_file << lexer.token_output << std::flush;
    // std::cout << lexer.token_output << std::endl;
    return status;
}