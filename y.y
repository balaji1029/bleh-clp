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
    #include "utils.hh"
    #include <string>
    #include <iostream>
    #include <utility>
    #include <memory>
    #include <limits>

    Lexer lexer;
    #define yylex(x) lexer.yylex(x)
    
    int seen_func_decl = 0;
%}


%code requires {
    #include "symtab.hh"
    #include "ast.hh"
    #include <string>
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

%type <Type> named_type
%type <Type> param_type

%type <std::shared_ptr<Func_Ast>> func_def

%type <std::shared_ptr<Sequence_Stmt_Ast>> statement_list compound_statement
%type <std::shared_ptr<Statement_Ast>> statement assignment_statement print_statement read_statement

%type <std::shared_ptr<Expression_Ast>> expression if_condition actual_arg
%type <std::shared_ptr<Relational_Expr_Ast>> rel_expression
%type <std::shared_ptr<Base_Expr_Ast>> constant_as_operand
%type <std::shared_ptr<Name_Expr_Ast>> variable_as_operand

%type <std::vector<std::pair<Type, std::string>>> formal_param_list
%type <std::pair<Type, std::string>> formal_param

%type <std::pair<Type, std::string>> func_header

%type <std::vector<std::string>> var_decl_item_list
%type <std::string> var_decl_item

%type <std::shared_ptr<While_Loop_Ast>> while_statement
%type <std::shared_ptr<Do_While_Loop_Ast>> do_while_statement

%type <std::shared_ptr<Selection_Stmt_Ast>> if_statement

%type <std::vector<std::shared_ptr<Expression_Ast>>> non_empty_arg_list actual_arg_list

%type <std::shared_ptr<Function_Call_Ast>> func_call

%type <std::shared_ptr<Function_Call_Stmt_Ast>> call_statement

%type <std::shared_ptr<Return_Stmt_Ast>> return_statement

%right QUESTION_MARK COLON
%left OR
%left AND
%right NOT
%nonassoc GT LT GE LE NE EQ
%left PLUS MINUS
%left MULT DIV
%right UMINUS

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%

program
    : global_decl_statement_list func_def_list
    | func_def_list
    ;

global_decl_statement_list
    : global_decl_statement_list var_decl_stmt
    | global_decl_statement_list func_decl
    | var_decl_stmt
    | func_decl

func_decl
    : func_header LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET SEMICOLON {
        if (!Error::get_sa_parse())
            symtab->add_func($1.first, $1.second, $3);
    }
    | func_header LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET SEMICOLON {
        if (!Error::get_sa_parse())
            symtab->add_func($1.first, $1.second, std::vector<std::pair<Type, std::string>>());
    }
    ;

func_def_list
    : func_def_list func_def {
        if (!Error::get_sa_parse()) 
            root_ast->add_func($2);
    }
    | func_def {
        if (!Error::get_sa_parse())
            root_ast->add_func($1);
    }
    ;

func_header
    : named_type NAME {
        // Error::semantic_check(($2 != "main") || ($1 == Type::VOID), "main is not void");
        if ($2 == "main_") $2.pop_back();
        $$ = std::make_pair($1, $2);
    }
    ;

func_def
    : func_header LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET {
        if (!Error::get_sa_parse()) 
            symtab->new_proc_symtab($1.first, $1.second, $3);
    } LEFT_CURLY_BRACKET optional_local_var_decl_stmt_list statement_list RIGHT_CURLY_BRACKET {
        if (!Error::get_sa_parse()) {
            auto proc_symtab = symtab->get_curr_proc_symtab();
            $$ = std::make_shared<Func_Ast>(proc_symtab, $8);
            symtab->go_global();
        }
    }
    | func_header LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET {
        if (!Error::get_sa_parse())
            symtab->new_proc_symtab($1.first, $1.second, std::vector<std::pair<Type, std::string>>());
    }  LEFT_CURLY_BRACKET  optional_local_var_decl_stmt_list statement_list RIGHT_CURLY_BRACKET {
        if (!Error::get_sa_parse()) {
            auto proc_symtab = symtab->get_curr_proc_symtab();
            $$ = std::make_shared<Func_Ast>(proc_symtab, $7);
            symtab->go_global();
        }
    }
    ;

formal_param_list
    : formal_param_list COMMA formal_param {
        if (!Error::get_sa_parse()) {
            $$ = std::move($1);
            $$.push_back($3);
        }
    }
    | formal_param {
        if (!Error::get_sa_parse())
            $$.push_back($1);
    }
    ;

formal_param
    : param_type NAME {
        if (!Error::get_sa_parse())
            $$ = std::make_pair($1, $2);
    }
    ;

param_type
    : INTEGER {
        if (!Error::get_sa_parse())
            $$ = Type::INT;
    }
    | FLOAT {
        if (!Error::get_sa_parse())
            $$ = Type::FLOAT;
    }
    | BOOL {
        if (!Error::get_sa_parse())
            $$ = Type::BOOL;
    }
    | STRING {
        if (!Error::get_sa_parse())
            $$ = Type::STRING;
    }
    ;

statement_list
    : statement_list statement {
        if (!Error::get_sa_parse()) {
            $1->add_child($2);
            $$ = std::move($1);
        }
    }
    | %empty {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Sequence_Stmt_Ast>();
    }
    ;

statement
    : assignment_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | if_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | do_while_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | while_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | compound_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | print_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | read_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | call_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | return_statement {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
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
        if (!Error::get_sa_parse()) {
            Error::semantic_check($1 != Type::VOID, "Variale should not be type void");
            for (const std::string& item : $2)
                symtab->add_var($1, item);
        }
    }
    ;
    
var_decl_item_list
    : var_decl_item_list COMMA var_decl_item {
        if (!Error::get_sa_parse()) {
            $$ = std::move($1);
            $$.push_back($3);
        }
    }
    | var_decl_item {
        if (!Error::get_sa_parse())
            $$.push_back($1);
    }
    ;

call_statement
    : func_call SEMICOLON {
        $$ = std::make_shared<Function_Call_Stmt_Ast>($1);
    }
    ;

func_call
    : NAME LEFT_ROUND_BRACKET actual_arg_list RIGHT_ROUND_BRACKET {
        if (!Error::get_sa_parse()) {
            auto func = symtab->find_func($1);
            if (func)
                $$ = std::make_shared<Function_Call_Ast>(*func, $3);
            else
                Error::semantic_error("Function " + $1 + " does not exist");
        }
    }
    ;

actual_arg_list
    : non_empty_arg_list {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | %empty {
        if (!Error::get_sa_parse())
            $$ = std::vector<std::shared_ptr<Expression_Ast>>();
    }
    ;

non_empty_arg_list
    : non_empty_arg_list COMMA actual_arg {
        if (!Error::get_sa_parse()) {
            $$ = std::move($1);
            $$.push_back(std::move($3));
        }
    }
    | actual_arg {
        if (!Error::get_sa_parse()) {
            $$ = std::vector<std::shared_ptr<Expression_Ast>>();
            $$.push_back(std::move($1));
        }
    }
    ;

actual_arg
    : expression {
        if (!Error::get_sa_parse()) {
            $$ = std::move($1);
        }
    }
    ;

return_statement
    : RETURN expression SEMICOLON {
        if (!Error::get_sa_parse()) {
            Type return_type = symtab->get_curr_proc_symtab()->get_return_type();
            Error::semantic_check(return_type != Type::VOID, "Returning an expression from VOID function");
            Error::semantic_check(return_type == $2->get_type(), "Return type doesn't match");
            symtab->get_curr_proc_symtab()->add_return_stmt();
            $$ = std::make_shared<Return_Stmt_Ast>($2);
        }
    }
    ;

var_decl_item
    : NAME
    ;

named_type
    : INTEGER {
        if (!Error::get_sa_parse())
            $$ = Type::INT;
    }
    | FLOAT {
        if (!Error::get_sa_parse())
            $$ = Type::FLOAT;
    }
    | VOID {
        if (!Error::get_sa_parse())
            $$ = Type::VOID;
    }
    | STRING {
        if (!Error::get_sa_parse())
            $$ = Type::STRING;
    }
    | BOOL {
        if (!Error::get_sa_parse())
            $$ = Type::BOOL;
    }
    ;

assignment_statement
    : variable_as_operand ASSIGN expression SEMICOLON {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Assignment_Stmt_Ast>(std::move($1), std::move($3));
    }
    | variable_as_operand ASSIGN func_call SEMICOLON {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Assignment_Stmt_Ast>(std::move($1), std::move($3));
    }
    ;

if_condition
    : LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET {
        if (!Error::get_sa_parse())
            $$ = std::move($2);
    }
    ;

if_statement
    : IF if_condition statement ELSE statement {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Selection_Stmt_Ast>($2, $3, $5);
    }
    | IF if_condition statement {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Selection_Stmt_Ast>($2, $3);
    } %prec LOWER_THAN_ELSE
    ;

do_while_statement
    : DO statement WHILE LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET SEMICOLON {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Do_While_Loop_Ast>($5, $2);
    }
    ;

while_statement
    : WHILE LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET statement {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<While_Loop_Ast>($3, $5);
    }
    ;

compound_statement
    : LEFT_CURLY_BRACKET statement_list RIGHT_CURLY_BRACKET {
        if (!Error::get_sa_parse())
            $$ = std::move($2);
    }
    ;

print_statement
    : WRITE expression SEMICOLON {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Write_Stmt_Ast>($2);
    }
    ;

read_statement
    : READ variable_as_operand SEMICOLON {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Read_Stmt_Ast>($2);
    }
    ;

expression
    : expression PLUS expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::PLUS);
    }
    | expression MINUS expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::MINUS);
    }
    | expression MULT expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::MULT);
    }
    | expression DIV expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Arith_Expr_Ast>($1, $3, Arith_Expr_Type::DIV);
    }
    | MINUS expression      %prec UMINUS {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Arith_Expr_Ast>($2, nullptr, Arith_Expr_Type::UMINUS);
    }
    | LEFT_ROUND_BRACKET expression RIGHT_ROUND_BRACKET {
        if (!Error::get_sa_parse())
            $$ = $2;
    }
    | expression QUESTION_MARK expression COLON expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Conditional_Expr_Ast>($1, $3, $5);
    }
    | expression AND expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Boolean_Expr_Ast>($1, $3, Boolean_Expr_Type::AND);
    }
    | expression OR expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Boolean_Expr_Ast>($1, $3, Boolean_Expr_Type::OR);
    }
    | NOT expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Boolean_Expr_Ast>($2, nullptr, Boolean_Expr_Type::NOT);
    }
    | rel_expression {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | variable_as_operand {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    | constant_as_operand {
        if (!Error::get_sa_parse())
            $$ = std::move($1);
    }
    ;

rel_expression
    : expression GT expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::GT);
    }
    | expression LT expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::LT);
    }
    | expression GE expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::GE);
    }
    | expression LE expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::LE);
    }
    | expression NE expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::NE);
    }
    | expression EQ expression {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Relational_Expr_Ast>($1, $3, Relational_Expr_Type::EQ);
    }
    ;

constant_as_operand
    : INTEGER_NUMBER {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<Number_Expr_Ast<int>>(Type::INT, std::atoi($1.c_str()));
    }
    | DOUBLE_NUMBER {
        if (!Error::get_sa_parse()) {
            double num;
            num = strtod($1.c_str(), nullptr);
            $$ = std::make_shared<Number_Expr_Ast<double>>(Type::FLOAT, num);
        }
    }
    | STRING_CONSTANT {
        if (!Error::get_sa_parse())
            $$ = std::make_shared<String_Expr_Ast>($1);
    }
    ;

variable_as_operand
    : NAME {
        if (!Error::get_sa_parse()) {
            auto var_ptr = symtab->find_var($1);
            if (var_ptr)
                $$ = std::make_shared<Name_Expr_Ast>(var_ptr.value());
            else
                Error::semantic_error(std::string("Var ") + $1 + " doesn't exist");
        }
    }
    ;