all: sclp

sclp: main.cpp lex.yy.h parser.tab.h
	g++ -std=c++20 -c lex.yy.cc -o lex.o
	g++ -std=c++20 -c parser.tab.cc -o parser.o
	g++ -std=c++20 -c main.cpp -o main.o
	g++ -std=c++20 main.o lex.o parser.o -o sclp


lex.yy.h: lexer.l
	flex lexer.l

parser.tab.h: parser.y
	bison --language=c++ -d parser.y

clean:
	-rm -f sclp
	-rm -f lexer
	-rm -f lex.yy.*
	-rm -f parser.tab.*
	