all: sclp

sclp: main.cpp lex.yy.h parser.tab.h
	g++ main.cpp lex.yy.c parser.tab.c -o sclp

lex.yy.h: lexer.l
	lex lexer.l

parser.tab.h: parser.y
	bison -d parser.y

clean:
	-rm -f sclp
	-rm -f lexer
	-rm -f lex.yy.c lex.yy.h
	-rm -f parser.tab.c parser.tab.h
