%option header-file="lex.yy.h"
%option noyywrap
%{

	// #include <iostream>
	#include <stdio.h>
	#include <stdbool.h>
	#include "parser.tab.h"

	// int yylex() {
	// 	yyFlexLexer l;
	// 	while (l.yylex());
	// 	return 0;
	// }

	bool show_tokens = true;

	char print_string[] = "Token Name: %s\tLexeme: %s\tLineno: %d\n";
	#define DISPLAY_TOKEN(a) if (show_tokens) printf(print_string, a, yytext, yylineno);
	// #define DISPLAY_TOKEN(a) if (show_tokens) std::cout << "Token Name: " a << "\tLexeme: " << yytext << "\tLineno: " << yylineno << std::endl;

%}

%%

void	{
	DISPLAY_TOKEN("VOID");
	return VOID;
}

int	{ 	
	DISPLAY_TOKEN("INTEGER");
	return INTEGER;
}

float {
	DISPLAY_TOKEN("FLOAT");
	return FLOAT;
}

string {
	DISPLAY_TOKEN("STRING");
	return STRING;
}

bool {
	DISPLAY_TOKEN("BOOL");
	return BOOL;
}

"("       {
	DISPLAY_TOKEN("LEFT_ROUND_BRACKET");
	return ')';
}

")"       {
	DISPLAY_TOKEN("RIGHT_ROUND_BRACKET");
	return RIGHT_ROUND_BRACKET;
}

"{"       {
	DISPLAY_TOKEN("LEFT_CURLY_BRACKET");
	return LEFT_CURLY_BRACKET;
}

"}"       {
	DISPLAY_TOKEN("RIGHT_CURLY_BRACKET");
	return LEFT_CURLY_BRACKET;
}

,		{
	DISPLAY_TOKEN("COMMA");
	return COMMA;
}

;		{
	DISPLAY_TOKEN("SEMICOLON");
	return SEMICOLON;
}

read    {
	DISPLAY_TOKEN("READ");
	return READ;
}

print   {
	DISPLAY_TOKEN("WRITE");
	return WRITE;
}

=       {
	DISPLAY_TOKEN("ASSIGN_OP");
	return ASSIGN;
}

[0-9]+"."[0-9]* {
	DISPLAY_TOKEN("FLOAT_NUM");
	return DOUBLE_NUMBER;
}

\"[^\"]*\" {
	DISPLAY_TOKEN("STR_CONST");
	return STRING_CONSTANT;
}

[0-9]*   {
	DISPLAY_TOKEN("INT_NUM");
	return INTEGER_NUMBER;
}

"+"        {
	DISPLAY_TOKEN("PLUS");
	return PLUS;
}

"-"        {
	DISPLAY_TOKEN("MINUS");
	return MINUS;
}

"*"        {
	DISPLAY_TOKEN("MULT");
	return MULT;
}

"/"        {
	DISPLAY_TOKEN("DIV");
	return DIV;
}

[A-Za-z][A-Za-z0-9_]* {
	DISPLAY_TOKEN("NAME");
	return NAME;
}

""

%%
