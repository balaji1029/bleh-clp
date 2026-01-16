all: sclp lexer

sclp: main.cpp
	g++ main.cpp -o sclp

lexer: lex.yy.c
	gcc lex.yy.c -ll -o lexer

lex.yy.c: lexer.l
	lex lexer.l

clean:
	-rm -f sclp
	-rm -f lexer
	-rm -f lex.yy.c
