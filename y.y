%define parse.error verbose
%language "c++"
%require "3.2"
%define api.value.type variant
%parse-param {Lexer& lexer} 
%parse-param {std::shared_ptr<GlobalSymbolTable> symtab}
%parse-param {std::shared_ptr<Root_Ast> root_ast}
%{
    #include "lexer.hh"
    #include "symtab.hh"
    #include "ast.hh"
    #include <string>
    #include <cassert>
    #include <iostream>
    #include <utility>
    #include <memory>

    Lexer lexer;
    #define yylex(x) lexer.yylex(x)
    
    int seen_func_decl = 0;
%}

%code requires {
    #include "symtab.hh"
    #include "ast.hh"
    #include <string>
    #include <cassert>
    #include <iostream>
    #include <utility>
    #include <memory>
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
%type <std::shared_ptr<Relational_Expr_Ast>> rel_expression
%type <std::shared_ptr<Base_Expr_Ast>> constant_as_operand
%type <std::shared_ptr<Name_Expr_Ast>> variable_as_operand
%type <std::pair<Type, std::string>> func_header
%type <std::vector<std::string>> var_decl_item_list
%type <std::shared_ptr<Func_Ast>> func_def
%type <std::string> var_decl_item

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
    : func_header SEMICOLON {
        error("main does not take arguments");
    }
    ;

func_def_list
    : func_def {
        root_ast->add_func($1);
    }
    ;

func_header
    : named_type NAME LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET {
        assert($1 == Type::VOID);
        assert($2 == "main_");
        if ($2 == "main_") $2.pop_back();
        $$ = std::make_pair($1, $2);
        symtab->new_proc_symtab($1, $2);
        auto proc_symtab = symtab->get_curr_proc_symtab();
    }
    | named_type NAME LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET {
        
    }
    ;

func_def
    : func_header LEFT_CURLY_BRACKET optional_local_var_decl_stmt_list statement_list RIGHT_CURLY_BRACKET {
        symtab->new_proc_symtab($1.first, $1.second);
        auto proc_symtab = symtab->get_curr_proc_symtab();
        $$ = std::make_shared<Func_Ast>(proc_symtab, $6);
    }
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
        $$ = std::make_shared<Sequence_Stmt_Ast>();
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
    : named_type var_decl_item_list SEMICOLON {
        for (auto item : $2) {
            auto var_ptr = symtab->find_local(item);
            if (var_ptr)
                error(std::string("Var ") + item + " already declared");
            else
                symtab->add_var($1, item);
        }
    }
    ;
    
var_decl_item_list
    : var_decl_item_list COMMA var_decl_item {
        $$ = $1;
        $$.push_back($3);
    }
    | var_decl_item {
        $$.push_back($1);
    }
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
        $$ = std::make_shared<Assignment_Stmt_Ast>(std::move($1), std::move($3));
    }
    ;

print_statement
    : WRITE expression SEMICOLON {
        $$ = std::make_shared<Write_Stmt_Ast>($2);
    }
    ;

read_statement
    : READ variable_as_operand SEMICOLON {
        $$ = std::make_shared<Read_Stmt_Ast>($2);
    }
    ;

expression
    : expression PLUS expression {
        $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::PLUS);
    }
    | expression MINUS expression {
        $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::MINUS);
    }
    | expression MULT expression {
        $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::MULT);
    }
    | expression DIV expression {
        $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::DIV);
    }
    | MINUS expression      %prec UMINUS {
        $$ = std::make_shared<Arith_Expr_Ast>($2, nullptr, Arith_Expr_Type::UMINUS);
    }
    | LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET {
        $$ = $2;
    }
    | expression QUESTION_MARK expression COLON expression {
        $$ = std::make_shared<Conditional_Expr_Ast>($1, $3, $5);
    }
    | expression AND expression {
        $$ = std::make_shared<Boolean_Expr_Ast>($1, $3, Boolean_Expr_Type::AND);
    }
    | expression OR expression {
        $$ = std::make_shared<Boolean_Expr_Ast>($1, $3, Boolean_Expr_Type::OR);
    }
    | NOT expression {
        $$ = std::make_shared<Boolean_Expr_Ast>($2, nullptr, Boolean_Expr_Type::NOT);
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
        $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::GT);
    }
    | expression LT expression {
        $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::LT);
    }
    | expression GE expression {
        $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::GE);
    }
    | expression LE expression {
        $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::LE);
    }
    | expression NE expression {
        $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::NE);
    }
    | expression EQ expression {
        $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::EQ);
    }
    ;

constant_as_operand
    : INTEGER_NUMBER {
        $$ = std::make_shared<Number_Expr_Ast<int>>(Type::INT, std::stoi($1));
    }
    | DOUBLE_NUMBER {
        $$ = std::make_shared<Number_Expr_Ast<double>>(Type::FLOAT, std::stof($1));
    }
    | STRING_CONSTANT {
        $$ = std::make_shared<String_Expr_Ast>($1);
    }
    ;

variable_as_operand
    : NAME {
        auto var_ptr = symtab->find_var($1);
        if (var_ptr)
            $$ = std::make_shared<Name_Expr_Ast>(var_ptr.value());
        else
            error(std::string("Var ") + $1 + " doesn't exist");
    }
    ;