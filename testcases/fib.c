int fib(int n) {
    // int a, b;
    if (n == 0) {
        return 0;
    }
    if (n == 1) {
        return 1;
    }
    if (n > 1) {
        int a, b;
        a = fib(n - 1);
        b = fib(n - 2);
        return a + b;
    }
    return 0;
}

void main() {
    int a;
    string newline;
    newline = "\n";
    read a;
    a = fib(a);
    print a;
    print newline;
}