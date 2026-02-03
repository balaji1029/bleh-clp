%define parse.error verbose
%language "c++"
%require "3.2"
%parse-param {Lexer& lexer}
%{
    #include "lexer.hh"
    #include <string>
    #include <iostream>

    Lexer lexer;
    #define yylex(x) lexer.yylex(x)
    
    int seen_func_decl = 0;
%}

%code requires {
    class Lexer;
}

%code {
    void yy::parser::error(const std::string& s) {
        std::cerr << s << std::endl;
        exit(EXIT_FAILURE);
    }
}

%token DO
%token WHILE
%token IF
%token ELSE

%token INTEGER
%token FLOAT
%token BOOL
%token STRING
%token VOID

%token WRITE
%token READ

%token NAME

%token RETURN
%token ASSIGN

%token AND
%token OR
%token NOT

%token GT
%token LT
%token GE
%token LE
%token NE
%token EQ

%token PLUS
%token MINUS
%token MULT
%token DIV
%token ADDRESSOF

%token LEFT_CURLY_BRACKET
%token RIGHT_CURLY_BRACKET
%token LEFT_ROUND_BRACKET
%token RIGHT_ROUND_BRACKET
%token LEFT_SQUARE_BRACKET
%token RIGHT_SQUARE_BRACKET

%token SEMICOLON
%token COMMA
%token QUESTION_MARK
%token COLON

%token DOUBLE_NUMBER
%token INTEGER_NUMBER
%token STRING_CONSTANT                                                                

%left PLUS MINUS
%left MULT DIV
%right UMINUS


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
    | MINUS expression      %prec UMINUS
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
