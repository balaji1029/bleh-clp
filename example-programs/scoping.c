int foo(int c, int d);
void bar(float x, float y);

string newline;

void main() {
    int x;
    newline = "\n";
    x = 5;
    while (x > 0) {
        x = x - 1;
        int b;
        b = 2;
        int a;
        a = foo(b, x);
        int c;
        print a;
        print newline;
        bar(5.0, 7.0);
    }
}

int foo(int a, int b) { return a + b; }

void bar(float a, float b) {
    print a;
    print newline;
    print b;
    print newline;
}