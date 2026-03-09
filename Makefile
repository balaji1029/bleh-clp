CXX = g++
CXXFLAGS = -Wall -Werror -std=c++20 -g
TARGET = sclp

all: sclp

.PHONY: debug
debug: CXXFLAGS = -Wall -std=c++20 -g -fsanitize=address
debug: sclp

sclp: main.o compiler.o y.tab.o lex.yy.o ast.o symtab.o utils.o tac.o tac_print.o
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cc compiler.hh lexer.hh y.tab.h ast.hh symtab.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

utils.o: utils.cc utils.hh compiler.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

compiler.o: compiler.cc compiler.hh lexer.hh y.tab.h ast.hh symtab.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

ast.o: ast.cc ast.hh symtab.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

tac.o: tac.cc tac.hh symtab.hh ast.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

tac_print.o: tac_print.cc symtab.hh ast.hh tac.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

symtab.o: symtab.cc symtab.hh
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
	-find . -type f -name "*.ast" -delete
	-find . -type f -name "*.spim" -delete
