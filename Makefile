all: sclp

sclp: main.cpp lex.yy.h parser.tab.h
	g++ -std=c++20 -g main.cpp lex.yy.c parser.tab.cc -o sclp

lex.yy.h: lexer.l
	flex lexer.l

parser.tab.h: parser.y
	bison --language=c++ -d parser.y

clean:
	-rm -f sclp
	-rm -f lexer
	-rm -f lex.yy.c lex.yy.h
	-rm -f parser.tab.c parser.tab.h
	