all: sclp

sclp: main.cpp
	g++ main.cpp -o sclp

clean:
	-rm -f sclp
