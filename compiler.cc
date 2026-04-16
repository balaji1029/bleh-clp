#include "compiler.hh"
#include "backward_flow.hh"

Compiler::Compiler(int argc, char *argv[]) : lexer(&input_file) {
    int opt;

    static struct option long_opts[] = {{"show-tokens", no_argument, 0, 0},
                                        {"show-ast", no_argument, 0, 0},
                                        {"show-tac", no_argument, 0, 0},
                                        {"show-symtab", no_argument, 0, 0},
                                        {"show-rtl", no_argument, 0, 0},
                                        {"show-asm", no_argument, 0, 0},
                                        {"sa-scan", no_argument, 0, 0},
                                        {"sa-parse", no_argument, 0, 0},
                                        {"sa-ast", no_argument, 0, 0},
                                        {"sa-tac", no_argument, 0, 0},
                                        {"sa-rtl", no_argument, 0, 0},
                                        {"sa-asm", no_argument, 0, 0},
                                        {"optimize", no_argument, 0, 0},
                                        {"demo", no_argument, 0, 'd'},
                                        {0, 0, 0, 0}};

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
                flags.sa_parse = true;
                flags.sa_ast = true;
                flags.sa_tac = true;
                flags.sa_rtl = true;
                Error::sa_scan = true;
                Error::sa_parse = true;
                Error::sa_ast = true;
            } else if (std::string(long_opts[opt_idx].name) == "show-ast")
                flags.show_ast = true;
            else if (std::string(long_opts[opt_idx].name) == "sa-parse") {
                flags.sa_parse = true;
                flags.sa_ast = true;
                flags.sa_tac = true;
                flags.sa_rtl = true;
                Error::sa_parse = true;
                Error::sa_ast = true;
            } else if (std::string(long_opts[opt_idx].name) == "show-tac")
                flags.show_tac = true;
            else if (std::string(long_opts[opt_idx].name) == "sa-ast") {
                flags.sa_ast = true;
                flags.sa_tac = true;
                flags.sa_rtl = true;
                Error::sa_ast = true;
            } else if (std::string(long_opts[opt_idx].name) == "show-symtab")
                flags.show_symtab = true;
            else if (std::string(long_opts[opt_idx].name) == "show-rtl")
                flags.show_rtl = true;
            else if (std::string(long_opts[opt_idx].name) == "sa-tac") {
                flags.sa_tac = true;
                flags.sa_rtl = true;
            } else if (std::string(long_opts[opt_idx].name) == "sa-rtl") {
                flags.sa_rtl = true;
            } else if (std::string(long_opts[opt_idx].name) == "optimize") {
                flags.optimize = true;
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
    output_tac_filename = input_filename + ".tac";
    output_symtab_filename = input_filename + ".sym";
    output_rtl_filename = input_filename + ".rtl";
    output_spim_filename = input_filename + ".spim";

    input_file.open(input_filename);
    if (flags.show_tokens && !flags.demo)
        output_token_file.open(output_token_filename);

    if (flags.show_ast && !flags.demo && !flags.sa_parse)
        output_ast_file.open(output_ast_filename);

    if (flags.show_tac && !flags.demo && !flags.sa_ast)
        output_tac_file.open(output_tac_filename);

    if (flags.show_symtab && !flags.demo && !flags.sa_ast)
        output_symtab_file.open(output_symtab_filename);

    if (flags.show_rtl && !flags.demo && !flags.sa_tac)
        output_rtl_file.open(output_rtl_filename);

    if (!flags.demo && !flags.sa_rtl)
        output_spim_file.open(output_spim_filename);
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

    if (flags.show_tokens && flags.sa_parse)
        output(lexer.token_output);

    if (flags.sa_parse)
        return status;

    sym_tab->func_check();
    sym_tab->add_fake_procs(root_ast);

    if (flags.show_tokens)
        output(lexer.token_output);

    std::string level = "";

    if (flags.show_ast && !flags.sa_parse) {
        if (flags.demo) {
            root_ast->print(std::cout, level);
        } else {
            root_ast->print(output_ast_file, level);
        }
    }

    if (flags.sa_ast)
        return status;

    level = "";
    if (flags.show_symtab) {
        if (flags.demo)
            sym_tab->print(std::cout, level);
        else
            sym_tab->print(output_symtab_file, level);
    }

    if (!flags.sa_ast)
        root_ast->build_tac(sym_tab);

    // if (flags.optimize)
    root_ast->optimize(sym_tab);
    
    if (flags.show_tac && !flags.sa_ast) {
        if (flags.demo)
            root_ast->print_tac(std::cout);
        else
            root_ast->print_tac(output_tac_file);
    }

    if (flags.sa_tac)
        return status;

    root_ast->build_rtl();

    if (flags.show_rtl) {
        if (flags.demo)
            root_ast->print_rtl(std::cout);
        else
            root_ast->print_rtl(output_rtl_file);
    }

    sym_tab->set_offsets();

    if (flags.sa_rtl)
        return status;

    if (flags.show_symtab) {
        if (flags.demo)
            sym_tab->print(std::cout, level);
        else
            sym_tab->print(output_symtab_file, level);
    }

    root_ast->build_asm(sym_tab);

    if (flags.demo)
        root_ast->print_asm(std::cout, sym_tab);
    else
        root_ast->print_asm(output_spim_file, sym_tab);

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
    // std::cout << root_ast << std::endl;
    // root_ast->print(std::cout, level);

    return status;
}
