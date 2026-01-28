%option c++
%option noyywrap
%option nodefault
%option yyclass="Lexer"
%{
	#include <string>
	#include "parser.tab.hh"
	#include "lexer.hh"

	#undef YY_DECL
	#define YY_DECL int Lexer::yylex(yy::parser::semantic_type* yylval)

	inline void Lexer::display_token_info(const char* a, const char* yytext, const int& lineno) {
		token_output += std::string("\tToken Name: ") + a + " \tLexeme: " + yytext + " \t Lineno: " + std::to_string(lineno) + "\n";
	}

	int yylineno = 1;

	void yyerror() {
		exit(1);
	}
%}

%%

void	{
	display_token_info("VOID", YYText(), yylineno);
	return yy::parser::token_kind_type::VOID;
}

int	{ 	
	display_token_info("INTEGER", YYText(), yylineno);
	return yy::parser::token::token_kind_type::INTEGER;
}

float {
	display_token_info("FLOAT", YYText(), yylineno);
	return yy::parser::token::token_kind_type::FLOAT;
}

string {
	display_token_info("STRING", YYText(), yylineno);
	return yy::parser::token::token_kind_type::STRING;
}

bool {
	display_token_info("BOOL", YYText(), yylineno);
	return yy::parser::token::token_kind_type::BOOL;
}

"("       {
	display_token_info("LEFT_ROUND_BRACKET", YYText(), yylineno);
	return yy::parser::token::token_kind_type::LEFT_ROUND_BRACKET;
}

")"       {
	display_token_info("RIGHT_ROUND_BRACKET", YYText(), yylineno);
	return yy::parser::token::token_kind_type::RIGHT_ROUND_BRACKET;
}

"{"       {
	display_token_info("LEFT_CURLY_BRACKET", YYText(), yylineno);
	return yy::parser::token::token_kind_type::LEFT_CURLY_BRACKET;
}

"}"       {
	display_token_info("RIGHT_CURLY_BRACKET", YYText(), yylineno);
	return yy::parser::token::token_kind_type::RIGHT_CURLY_BRACKET;
}

,		{
	display_token_info("COMMA", YYText(), yylineno);
	return yy::parser::token::token_kind_type::COMMA;
}

;		{
	display_token_info("SEMICOLON", YYText(), yylineno);
	return yy::parser::token::token_kind_type::SEMICOLON;
}

read    {
	display_token_info("READ", YYText(), yylineno);
	return yy::parser::token::token_kind_type::READ;
}

print   {
	display_token_info("WRITE", YYText(), yylineno);
	return yy::parser::token::token_kind_type::WRITE;
}

=       {
	display_token_info("ASSIGN_OP", YYText(), yylineno);
	return yy::parser::token::token_kind_type::ASSIGN;
}

("."[0-9]+)|([0-9]+"."[0-9]*) {
	display_token_info("FLOAT_NUM", YYText(), yylineno);
	return yy::parser::token::token_kind_type::DOUBLE_NUMBER;
}

\"[^\"]*\" {
	display_token_info("STR_CONST", YYText(), yylineno);
	return yy::parser::token::token_kind_type::STRING_CONSTANT;
}

[0-9]+   {
	display_token_info("INT_NUM", YYText(), yylineno);
	return yy::parser::token::token_kind_type::INTEGER_NUMBER;
}

"+"        {
	display_token_info("PLUS", YYText(), yylineno);
	return yy::parser::token::token_kind_type::PLUS;
}

"-"        {
	display_token_info("MINUS", YYText(), yylineno);
	return yy::parser::token::token_kind_type::MINUS;
}

"*"        {
	display_token_info("MULT", YYText(), yylineno);
	return yy::parser::token::token_kind_type::MULT;
}

"//".* {

}

"/"        {
	display_token_info("DIV", YYText(), yylineno);
	return yy::parser::token::token_kind_type::DIV;
}

[A-Za-z_][A-Za-z0-9_]* {
	display_token_info("NAME", YYText(), yylineno);
	return yy::parser::token::token_kind_type::NAME;
}

[ \t\r]	{

}

\n		{
	yylineno++;
}

.       {
	// fprintf(stderr, "Illegal character: '%s'\n", YYText());
	// std::cerr << "Illegal character: " << YYText() << std::endl;
	std::cerr << "Illegal character: " << YYText() << std::endl;
	yyerror();
}

%%
