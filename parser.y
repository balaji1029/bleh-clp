%define parse.error verbose
%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string>
    #include <iostream>

    // extern int yylex();
    extern int yyparse();
    extern FILE *yyin;
    extern FILE *tok_out;
    extern bool show_tokens;


    int seen_func_decl = 0;
%}

%code {
    extern int yylex(yy::parser::semantic_type* yylval);
    void yy::parser::error(const std::string& s) {
        // fprintf(stderr, s);
        // fprintf(stderr, "\n");
        std::cerr << s << std::endl;
        if (show_tokens) {
            tok_out = freopen(NULL, "w", tok_out);
            if (!tok_out)
                perror("freopen");
            else
                fclose(tok_out);
        }
        exit(EXIT_FAILURE);
    }
}
%token NAME

%token INTEGER
%token FLOAT
%token BOOL
%token STRING
%token VOID

%token ASSIGN

%token WRITE
%token READ

%token INTEGER_NUMBER
%token DOUBLE_NUMBER
%token STRING_CONSTANT

%token LEFT_ROUND_BRACKET
%token RIGHT_ROUND_BRACKET
%token LEFT_CURLY_BRACKET
%token RIGHT_CURLY_BRACKET

%token COMMA
%token SEMICOLON

%token PLUS
%token MINUS
%token MULT
%token DIV

%left PLUS MINUS
%left MULT DIV

%%

program
    : global_decl_statement_list func_def_list
    | func_def_list
    ;

global_decl_statement_list
    : global_decl_statement_list var_decl_stmt
    | global_decl_statement_list func_decl
        {
            if (seen_func_decl) {
                error("only one func_decl allowed\n");
            }
            seen_func_decl = 1;
        }
    | var_decl_stmt
    | func_decl
        {
            if (seen_func_decl) {
                error("only one func_decl allowed\n");
            }
            seen_func_decl = 1;
        }

func_decl
    : func_header LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET SEMICOLON
    | func_header LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET SEMICOLON
        {
            printf("hello\n");
        }
    ;

func_def_list
    : func_def
    ;

func_header
    : named_type NAME
    ;

func_def
    : func_header LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET LEFT_CURLY_BRACKET optional_local_var_decl_stmt_list statement_list RIGHT_CURLY_BRACKET
    | func_header LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET LEFT_CURLY_BRACKET optional_local_var_decl_stmt_list statement_list RIGHT_CURLY_BRACKET
    ;

formal_param_list
    : formal_param_list COMMA formal_param
    | formal_param
    ;

formal_param
    : param_type NAME
    ;

param_type
    : INTEGER
    | FLOAT
    | BOOL
    | STRING
    ;

statement_list
    : statement_list statement
    | %empty
    ;

statement
    : assignment_statement
    | print_statement
    | read_statement
    ;

optional_local_var_decl_stmt_list
    : %empty
    | var_decl_stmt_list
    ;

var_decl_stmt_list
    : var_decl_stmt
    | var_decl_stmt_list var_decl_stmt
    ;

var_decl_stmt
    : named_type var_decl_item_list SEMICOLON
    ;
    
var_decl_item_list
    : var_decl_item_list COMMA var_decl_item
    | var_decl_item
    ;

var_decl_item
    : NAME
    ;

named_type
    : INTEGER
    | FLOAT
    | VOID
    | STRING
    | BOOL
    ;

assignment_statement
    : variable_as_operand ASSIGN expression SEMICOLON
    ;

print_statement
    : WRITE expression SEMICOLON
    ;

read_statement
    : READ variable_name SEMICOLON
    ;

expression
    : expression PLUS expression
    | expression MINUS expression
    | expression MULT expression
    | expression DIV expression
    | MINUS expression
    | LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET
    | variable_as_operand
    | constant_as_operand
    ;

variable_as_operand
    : variable_name
    ;

variable_name
    : NAME
    ;

constant_as_operand
    : INTEGER_NUMBER
    | DOUBLE_NUMBER
    | STRING_CONSTANT
    ;
