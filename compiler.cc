#include "compiler.hh"

Compiler::Compiler(int argc, char *argv[]) : lexer(&input_file) {
    int opt;

    static struct option long_opts[] = {{"show-tokens", no_argument, 0, 0}, {"sa-scan", no_argument, 0, 0},
                                        {"show-ast", no_argument, 0, 0},    {"sa-parse", no_argument, 0, 0},
                                        {"demo", no_argument, 0, 'd'},      {0, 0, 0, 0}};

    int opt_idx = 0;

    while ((opt = getopt_long(argc, argv, "d", long_opts, &opt_idx)) != -1) {
        switch (opt) {
        case 'd':
            flags.demo = true;
            break;
        case 0:
            if (std::string(long_opts[opt_idx].name) == "show-tokens")
                flags.show_tokens = true;
            else if (std::string(long_opts[opt_idx].name) == "sa-scan") {
                flags.sa_scan = true;
                Error::sa_scan = true;
            } else if (std::string(long_opts[opt_idx].name) == "show-ast")
                flags.show_ast = true;
            else if (std::string(long_opts[opt_idx].name) == "sa-parse") {
                flags.sa_parse = true;
                Error::sa_parse = true;
            }
            break;
        default:
            std::cerr << ERROR << std::endl;
            exit(EXIT_FAILURE);
        }
    }

    if (optind >= argc || optind + 1 < argc) {
        std::cerr << ERROR << std::endl;
        exit(EXIT_FAILURE);
    }

    sym_tab = std::make_shared<GlobalSymbolTable>();
    root_ast = std::make_shared<Root_Ast>();

    input_filename = std::string(argv[optind]);
    output_token_filename = input_filename + ".toks";
    output_ast_filename = input_filename + ".ast";

    input_file.open(input_filename);
    if (flags.show_tokens && !flags.demo)
        output_token_file.open(output_token_filename);

    if (flags.show_ast && !flags.demo && !flags.sa_parse)
        output_ast_file.open(output_ast_filename);
}

int Compiler::run() {
    int status = 0;

    if (!input_file.is_open()) {
        std::cerr << "File not open!! :(" << std::endl;
    }

    if (flags.sa_scan)
        scan();
    else
        status = parse();

    if (flags.show_tokens)
        output(lexer.token_output);

    return status;
}

void Compiler::output(std::string s) {
    if (flags.demo)
        std::cout << s << std::flush;
    else
        output_token_file << lexer.token_output << std::flush;
}

int Compiler::scan() {
    yy::parser::semantic_type yylval;
    while (lexer.yylex(&yylval))
        ;
    return 0;
}

int Compiler::parse() {
    int status = 0;

    yy::parser parser(lexer, sym_tab, root_ast);

    status = parser.parse();
    std::string level = "";
    // std::cout << root_ast << std::endl;
    if (flags.show_ast && !flags.sa_parse) {
        if (flags.demo) {
            root_ast->print(std::cout, level);
        } else {
            root_ast->print(output_ast_file, level);
        }
    }
    // root_ast->print(std::cout, level);

    return status;
}
