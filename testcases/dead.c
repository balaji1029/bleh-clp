int c;

int foo() {
    int a;
    a = 5;
    c = 6;
    return a;
    a = 6;
    c = 7;
}

void main() {
    int b;
    string newline;
    newline = "\n";
    b = foo();
    print c;
    print newline;
}