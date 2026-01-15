all: sclp

sclp:
	g++ main.cpp -o sclp

clean:
	rm -rf sclp
	