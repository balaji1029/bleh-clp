#pragma once

#ifndef yyFlexLexer
#include <FlexLexer.h>
#endif

#include "y.tab.h"
#include <fstream>

class Lexer : public yyFlexLexer {
public:
    std::string token_output;
    Lexer () = default;
    Lexer (std::istream* in) : yyFlexLexer(in) {}
    inline void display_token_info(const char*, const char*, const int&);
    int yylex (yy::parser::semantic_type* yylval);
};