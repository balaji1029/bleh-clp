CXX = g++
CXXFLAGS = -Wall -std=c++20 -O2
TARGET = sclp

all: sclp

.PHONY: debug
debug: CXXFLAGS = -std=c++20 -g
debug: sclp

sclp: main.o compiler.o y.tab.o lex.yy.o
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cc lexer.hh y.tab.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

compiler.o: compiler.cc compiler.hh lexer.hh y.tab.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

y.tab.o: y.tab.cc lexer.hh y.tab.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

lex.yy.o: lex.yy.cc y.tab.h lexer.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

lex.yy.cc: lexer.l
	flex lexer.l

y.tab.h y.tab.cc: y.y
	bison --language=c++ --header=y.tab.h -dv y.y

clean:
	-rm -f sclp
	-rm -rf *.o
	-rm -f lex.yy.*
	-rm -f y.tab.*
	-rm -f *.output
	-rm -f *.log
	-find . -type f -name "*.toks" -delete
	
