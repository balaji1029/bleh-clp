#pragma once

#ifndef yyFlexLexer
#include <FlexLexer.h>
#endif

#include "parser.tab.hh"
#include <fstream>

class Lexer : public yyFlexLexer {
public:
    std::string token_output;
    Lexer () = default;
    Lexer (std::istream* in) : yyFlexLexer(in) {}
    inline void display_token_info(const char*, const char*, const int&);
    int yylex (yy::parser::semantic_type* yylval);
};