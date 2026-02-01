#include "compiler.hh"

Compiler::Compiler (int argc, char* argv[]) : lexer(&input_file) {
    int opt;

    static struct option long_opts[] = {
        {"show-tokens", no_argument, 0, 't'},
        {"sa-scan", no_argument, 0, 's'},
        {0, 0, 0, 0}
    };

    while ((opt = getopt_long(argc, argv, "ts", long_opts, NULL)) != -1) {
        switch (opt) {
            case 't':
                flags.show_tokens = true;
                break;
            case 's':
                flags.sa_scan = true;
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

int Compiler::run() {
    int status = 0;
    
    if (!input_file.is_open()) {
        std::cerr << "File not open!! :(" << std::endl;
    }

    if (flags.sa_scan) return scan();

    status = parse();
    
    if (flags.show_tokens) output_token_file << lexer.token_output << std::flush;

    return status;
}

int Compiler::scan() {
    yy::parser::semantic_type yylval;
    while (lexer.yylex(&yylval));
    return 0;
}

int Compiler::parse() {
    int status = 0;

    yy::parser parser(lexer);

    status = parser.parse();
    return status;
}