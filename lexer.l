% {

	#include <cstdio>
	#include <cstdlib>
	#include <cstring>

	#include "parser.tab.h"

	int yylineno = 1;

	extern yylex();
	extern bool show_tokens;

	char print_string[] = "Token Name: %s\tLexeme: %s\tLineno: %d";

% }

%%

"int"	{ 	
	if (show_tokens) printf(print_string, "INTEGER", "int", yylineno);
	return INTEGER;
}

"void"	{
	if (show_tokens) printf(print_string, "VOID", "void", yylineno);
	return VOID;
}

","		{
	if (show_tokens) printf(print_string, "COMMA", ",", yylineno);
	return COMMA;
}

";"		{
	if (show_tokens) printf(print_string, "SEMICOLON", ";", yylineno);
	return SEMICOLON;
}

""


%%

int yywrap(void) {
	return 1;
}