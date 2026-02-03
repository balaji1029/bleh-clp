%option c++
%option noyywrap
%option nodefault
%option yyclass="Lexer"
%{
	#include <string>
	#include "y.tab.h"
	#include "lexer.hh"

	#undef YY_DECL
	#define YY_DECL int Lexer::yylex(yy::parser::semantic_type* yylval)

	inline void Lexer::display_token_info(const char* a, const char* yytext, const int& lineno) {
		token_output += std::string("\tToken Name: ") + a + " \tLexeme: " + yytext + " \t Lineno: " + std::to_string(lineno) + "\n";
	}

	int yylineno = 1;

	void yyerror(const std::string& s) {
		std::cerr << s << std::endl; 
		exit(1);
	}

	static std::string NOT_IMPLEMENTED = "Not Implemented yet!!!";
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

return	{
	display_token_info("RETURN", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::RETURN;
}

if		{
	display_token_info("IF", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::IF;
}

else 	{
	display_token_info("ELSE", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::ELSE;
}

do		{
	display_token_info("DO", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::DO;
}

while	{
	display_token_info("WHILE", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::WHILE;
}

"?"		{
	display_token_info("QUESTION_MARK", YYText(), yylineno);
	return yy::parser::token::token_kind_type::QUESTION_MARK;
}

":"		{
	display_token_info("COLON", YYText(), yylineno);
	return yy::parser::token::token_kind_type::COLON;
}

"&"		{
	display_token_info("ADDRESSOF", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::COLON;
}

">"	{
	display_token_info("GREATER_THAN", YYText(), yylineno);
	return yy::parser::token::token_kind_type::GT;
}

"<"	{
	display_token_info("LESS_THAN", YYText(), yylineno);
	return yy::parser::token::token_kind_type::LT;
}

">="	{
	display_token_info("GREATER_THAN_EQUAL", YYText(), yylineno);
	return yy::parser::token::token_kind_type::GE;
}

"<="	{
	display_token_info("LESS_THAN_EQUAL", YYText(), yylineno);
	return yy::parser::token::token_kind_type::LE;
}

"!="	{
	display_token_info("NOT_EQUAL", YYText(), yylineno);
	return yy::parser::token::token_kind_type::NE;
}

"=="	{
	display_token_info("EQUAL", YYText(), yylineno);
	return yy::parser::token::token_kind_type::EQ;
}

"&&"	{
	display_token_info("AND", YYText(), yylineno);
	return yy::parser::token::token_kind_type::AND;
}

"||"	{
	display_token_info("OR", YYText(), yylineno);
	return yy::parser::token::token_kind_type::OR;
}

"!"	{
	display_token_info("NOT", YYText(), yylineno);
	return yy::parser::token::token_kind_type::NOT;
}

"["		{
	display_token_info("LEFT_SQUARE_BRACKET", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::LEFT_SQUARE_BRACKET;
}

"]"		{
	display_token_info("RIGHT_SQUARE_BRACKET", YYText(), yylineno);
	yyerror(NOT_IMPLEMENTED);
	return yy::parser::token::token_kind_type::RIGHT_SQUARE_BRACKET;
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

\"[^\"\n]*\" {
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
	yyerror(std::string("Illegal character: ") + YYText());
}

%%
