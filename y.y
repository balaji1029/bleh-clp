%define parse.error verbose
%language "c++"
%require "3.2"
%define api.value.type variant
%parse-param {Lexer& lexer, std::shared_ptr<GlobalSymbolTable> symtab}
%{
    #include "lexer.hh"
    #include "symtab.hh"
    #include "ast.hh"
    #include <string>
    #include <cassert>
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

%token <std::string> NAME

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

%token <std::string> DOUBLE_NUMBER
%token <std::string> INTEGER_NUMBER
%token <std::string> STRING_CONSTANT 


%type <std::shared_ptr<Ast>> program
%type <std::shared_ptr<Sequence_Stmt_Ast>> statement_list

%type <std::shared_ptr<Statement_Ast>> statement assignment_statement print_statement read_statement

%type <Type> named_type

%type <std::shared_ptr<Expression_Ast>> expression
%type <std::shared_ptr<Relational_Expr_Type>> rel_expression
%type <std::shared_ptr<Base_Expr_Ast>> constant_as_operand
%type <std::shared_ptr<Name_Expr_Ast>> variable_as_operand

%right QUESTION_MARK COLON
%left OR
%left AND
%right NOT
%nonassoc GT LT GE LE NE EQ
%left PLUS MINUS
%left MULT DIV
%right UMINUS

%%

program
    : global_decl_statement_list func_def_list {}
    | func_def_list {}
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
    : func_header LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET SEMICOLON {
        error("main does not take arguments");
    }
    | func_header LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET SEMICOLON
    ;

func_def_list
    : func_def
    ;

func_header
    : named_type NAME {
        assert($1 == Type::VOID);
        symtab->new_proc_symtab($2, $1);
    }
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
    : statement_list statement {
        $1->add_child($2);
        $$ = $1;
    }
    | %empty {
        $$ = make_shared<Sequence_Stmt_Ast>();
    }
    ;

statement
    : assignment_statement {
        $$ = $1;
    }
    | print_statement {
        $$ = $1;
    }
    | read_statement {
        $$ = $1;
    }
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
    : INTEGER {
        $$ = Type::INT;
    }
    | FLOAT {
        $$ = Type::FLOAT;
    }
    | VOID {
        $$ = Type::VOID;
    }
    | STRING {
        $$ = Type::STRING;
    }
    | BOOL {
        $$ = Type::BOOL;
    }
    ;

assignment_statement
    : variable_as_operand ASSIGN expression SEMICOLON {
        $$ = make_shared<Assignment_Stmt_Ast>($1, $3);
    }
    ;

print_statement
    : WRITE expression SEMICOLON {
        $$ = make_shared<Write_Stmt_Ast>($2);
    }
    ;

read_statement
    : READ variable_as_operand SEMICOLON {
        $$ = make_shared<Read_Stmt_Ast>($2);
    }
    ;

expression
    : expression PLUS expression {
        $$ = make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::PLUS);
    }
    | expression MINUS expression {
        $$ = make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::MINUS);
    }
    | expression MULT expression {
        $$ = make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::MULT);
    }
    | expression DIV expression {
        $$ = make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::DIV);
    }
    | MINUS expression      %prec UMINUS {
        $$ = make_shared<Arith_Expr_Ast>($2, nullptr, Arith_Expr_Type::UMINUS);
    }
    | LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET {
        $$ = $2;
    }
    | expression QUESTION_MARK expression COLON expression {
        $$ = make_shared<Conditional_Expr_Ast>($1, $3, $5);
    }
    | expression AND expression {
        $$ = make_shared<Boolean_Expr_Ast>($1, $3, Boolean_Expr_Type::AND);
    }
    | expression OR expression {
        $$ = make_shared<Boolean_Expr_Ast>($1, $3, Boolean_Expr_Type::OR);
    }
    | NOT expression {
        $$ = make_shared<Boolean_Expr_Ast>($2, nullptr, Boolean_Expr_Type::NOT);
    }
    | rel_expression {
        $$ = $1;
    }
    | variable_as_operand {
        $$ = $1;
    }
    | constant_as_operand {
        $$ = $1;
    }
    ;

rel_expression
    : expression GT expression {
        $$ = make_shared<Relational_Expr_Type>($1, $3, Relational_Expr_Type::GT);
    }
    | expression LT expression {
        $$ = make_shared<Relational_Expr_Type>($1, $3, Relational_Expr_Type::LT);
    }
    | expression GE expression {
        $$ = make_shared<Relational_Expr_Type>($1, $3, Relational_Expr_Type::GE);
    }
    | expression LE expression {
        $$ = make_shared<Relational_Expr_Type>($1, $3, Relational_Expr_Type::LE);
    }
    | expression NE expression {
        $$ = make_shared<Relational_Expr_Type>($1, $3, Relational_Expr_Type::NE);
    }
    | expression EQ expression {
        $$ = make_shared<Relational_Expr_Type>($1, $3, Relational_Expr_Type::EQ);
    }
    ;

constant_as_operand
    : INTEGER_NUMBER {
        $$ = make_shared<Number_Expr_Ast<int>>(Type::INT, atoi($1));
    }
    | DOUBLE_NUMBER {
        $$ = make_shared<Number_Expr_Ast<double>>(Type::FLOAT, atof($1));
    }
    | STRING_CONSTANT {
        $$ = make_shared<String_Expr_Ast>($1);
    }
    ;

variable_as_operand
    : NAME {
        auto var_ptr = symtab->find_var($1);
        if (var_ptr)
            $$ = std::make_shared<Name_Expr_Ast>(auto_var_ptr);
        else
            error(std::string("Var ") + $1 + " doesn't exist");
    }
    ;