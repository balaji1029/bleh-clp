%option header-file="lex.yy.h"
%option noyywrap
%{

	// #include <iostream>
	#include <stdio.h>
	#include <stdbool.h>
	#include <string>
	// #include <format>
	#include "parser.tab.hh"

	#define YY_DECL int yylex(yy::parser::semantic_type* yylval)

	// int yylex() {
	// 	yyFlexLexer l;
	// 	while (l.yylex());
	// 	return 0;
	// }

	std::string token_output;

	FILE *tok_out;

	bool show_tokens = false;
	extern char* tok_out_filename;

	char print_string[] = "\tToken Name: %s \tLexeme: %s \t Lineno: %d\n";
	// #define DISPLAY_TOKEN(a) if (show_tokens) fprintf(tok_out, print_string, a, yytext, yylineno);
	// #define DISPLAY_TOKEN(a) if (show_tokens) token_putput += std::format("\tToken Name: {} \tLexeme: {} \t Lineno: {}\n", a, yytext, yylineno);
	// #define DISPLAY_TOKEN(a) if (show_tokens) token_putput += std::string("\tToken Name: ") + a + " \tLexeme: " + yytext + " \t Lineno: " + std::to_string(yylineno) + "\n"

	inline void display_token_info(const char* a, const char* yytext, const int& yylineno) {
		token_output += std::string("\tToken Name: ") + a + " \tLexeme: " + yytext + " \t Lineno: " + std::to_string(yylineno) + "\n";
	}


	// #define DISPLAY_TOKEN(a) if (show_tokens) std::cout << "Token Name: " a << "\tLexeme: " << yytext << "\tLineno: " << yylineno << std::endl;

	void yyerror() {
		if (show_tokens) {
			tok_out = freopen(NULL, "w", tok_out);
			if (!tok_out)
				perror("freopen");
			else
				fclose(tok_out);
		}
		exit(1);
	}
%}

%%

void	{
	display_token_info("VOID", yytext, yylineno);
	return yy::parser::token_kind_type::VOID;
}

int	{ 	
	display_token_info("INTEGER", yytext, yylineno);
	return yy::parser::token::token_kind_type::INTEGER;
}

float {
	display_token_info("FLOAT", yytext, yylineno);
	return yy::parser::token::token_kind_type::FLOAT;
}

string {
	display_token_info("STRING", yytext, yylineno);
	return yy::parser::token::token_kind_type::STRING;
}

bool {
	display_token_info("BOOL", yytext, yylineno);
	return yy::parser::token::token_kind_type::BOOL;
}

"("       {
	display_token_info("LEFT_ROUND_BRACKET", yytext, yylineno);
	return yy::parser::token::token_kind_type::LEFT_ROUND_BRACKET;
}

")"       {
	display_token_info("RIGHT_ROUND_BRACKET", yytext, yylineno);
	return yy::parser::token::token_kind_type::RIGHT_ROUND_BRACKET;
}

"{"       {
	display_token_info("LEFT_CURLY_BRACKET", yytext, yylineno);
	return yy::parser::token::token_kind_type::LEFT_CURLY_BRACKET;
}

"}"       {
	display_token_info("RIGHT_CURLY_BRACKET", yytext, yylineno);
	return yy::parser::token::token_kind_type::RIGHT_CURLY_BRACKET;
}

,		{
	display_token_info("COMMA", yytext, yylineno);
	return yy::parser::token::token_kind_type::COMMA;
}

;		{
	display_token_info("SEMICOLON", yytext, yylineno);
	return yy::parser::token::token_kind_type::SEMICOLON;
}

read    {
	display_token_info("READ", yytext, yylineno);
	return yy::parser::token::token_kind_type::READ;
}

print   {
	display_token_info("WRITE", yytext, yylineno);
	return yy::parser::token::token_kind_type::WRITE;
}

=       {
	display_token_info("ASSIGN_OP", yytext, yylineno);
	return yy::parser::token::token_kind_type::ASSIGN;
}

("."[0-9]+)|([0-9]+"."[0-9]*) {
	display_token_info("FLOAT_NUM", yytext, yylineno);
	return yy::parser::token::token_kind_type::DOUBLE_NUMBER;
}

\"[^\"]*\" {
	display_token_info("STR_CONST", yytext, yylineno);
	return yy::parser::token::token_kind_type::STRING_CONSTANT;
}

[0-9]+   {
	display_token_info("INT_NUM", yytext, yylineno);
	return yy::parser::token::token_kind_type::INTEGER_NUMBER;
}

"+"        {
	display_token_info("PLUS", yytext, yylineno);
	return yy::parser::token::token_kind_type::PLUS;
}

"-"        {
	display_token_info("MINUS", yytext, yylineno);
	return yy::parser::token::token_kind_type::MINUS;
}

"*"        {
	display_token_info("MULT", yytext, yylineno);
	return yy::parser::token::token_kind_type::MULT;
}

"//".* {

}

"/"        {
	display_token_info("DIV", yytext, yylineno);
	return yy::parser::token::token_kind_type::DIV;
}

[A-Za-z_][A-Za-z0-9_]* {
	display_token_info("NAME", yytext, yylineno);
	return yy::parser::token::token_kind_type::NAME;
}

[ \t]	{

}

\n		{
	yylineno++;
}

.       {
	fprintf(stderr, "Illegal character: '%s'\n", yytext);
	yyerror();
}

%%
