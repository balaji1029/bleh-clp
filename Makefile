CXX = g++
CXXFLAGS = -std=c++20 -O3
TARGET = sclp

all: sclp

.PHONY: debug
debug: CXXFLAGS = -std=c++20 -g
debug: sclp

sclp: main.o compiler.o parser.tab.o lex.yy.o
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cpp lexer.hh parser.tab.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

compiler.o: compiler.cpp compiler.hh lexer.hh parser.tab.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

parser.tab.o: parser.tab.cc lexer.hh parser.tab.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

lex.yy.o: lex.yy.cc parser.tab.hh lexer.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

lex.yy.cc: lexer.l
	flex lexer.l

parser.tab.hh parser.tab.cc: parser.y
	bison --language=c++ -d parser.y

clean:
	-rm -f sclp
	-rm -rf *.o
	-rm -f lex.yy.*
	-rm -f parser.tab.*
	