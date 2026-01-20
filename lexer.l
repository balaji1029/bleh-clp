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

	FILE *tok_out;

	bool show_tokens = false;
	extern char* tok_out_filename;

	char print_string[] = "\tToken Name: %s \tLexeme: %s \t Lineno: %d\n";
	#define DISPLAY_TOKEN(a) if (show_tokens) fprintf(tok_out, print_string, a, yytext, yylineno);
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
	return LEFT_ROUND_BRACKET;
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
	return RIGHT_CURLY_BRACKET;
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

("."[0-9]+)|([0-9]+"."[0-9]*) {
	DISPLAY_TOKEN("FLOAT_NUM");
	return DOUBLE_NUMBER;
}

\"[^\"]*\" {
	DISPLAY_TOKEN("STR_CONST");
	return STRING_CONSTANT;
}

[0-9]+   {
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

"//".* {

}

"/"        {
	DISPLAY_TOKEN("DIV");
	return DIV;
}

[A-Za-z_][A-Za-z0-9_]* {
	DISPLAY_TOKEN("NAME");
	return NAME;
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
