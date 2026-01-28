CXX = g++
CXXFLAGS = -std=c++20 -O3
TARGET = sclp

sclp: main.o parser.tab.o lex.yy.o
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cpp lexer.hh parser.tab.hh lex.yy.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

parser.tab.o: parser.tab.cc lexer.hh parser.tab.hh lex.yy.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

lex.yy.o: lex.yy.cc parser.tab.hh lexer.hh lex.yy.hh
	$(CXX) $(CXXFLAGS) -c $< -o $@

lex.yy.hh: lexer.l
	flex lexer.l

parser.tab.hh parser.tab.cc: parser.y
	bison --language=c++ -d parser.y

clean:
	-rm -f sclp
	-rm -rf *.o
	-rm -f lex.yy.*
	-rm -f parser.tab.*
	