%{
    #include <stdio.h>
    #include <stdlib.h>

    extern int yylex();
    extern int yyparse();
    extern FILE *yyin;

    void yyerror(const char *s) {
        fprintf(stderr, s);
    }

    int seen_func_decl = 0;
%}

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

%left '+' '-'
%left '*' '/'




%%

program
    : global_decl_statement_list func_def_list
    | global_decl_statement_list
    ;

global_decl_statement_list
    : global_decl_statement_list var_decl_stmt
    | global_decl_statement_list func_decl
        {
            if (seen_func_decl) {
                yyerror("only one func_decl allowed\n");
            }
            seen_func_decl = 1;
        }
    | var_decl_stmt
    | func_decl
        {
            if (seen_func_decl) {
                yyerror("only one func_decl allowed\n");
            }
            seen_func_decl = 1;
        }

func_decl
    : func_header '(' formal_param_list ')' ';'
    | func_header '(' ')' ';'
    ;

func_def_list
    : func_def
    ;

func_header
    : named_type NAME
    ;

func_def
    : func_header '(' formal_param_list ')' '{' optional_local_var_decl_stmt_list statement_list '}'
    | func_header '(' ')' '{' optional_local_var_decl_stmt_list statement_list '}'
    ;

formal_param_list
    : formal_param_list ',' formal_param
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
    | var_decl_stmt_list ';' var_decl_stmt
    ;

var_decl_stmt
    : named_type var_decl_item_list ';'
    ;
    
var_decl_item_list
    : var_decl_item_list ',' var_decl_item
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
    : variable_as_operand ASSIGN expression ';'
    ;

print_statement
    : WRITE expression ';'
    ;

read_statement
    : READ variable_name ';'
    ;

expression
    : expression '+' expression
    | expression '-' expression
    | expression '*' expression
    | '-' expression
    | '(' expression ')'
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
