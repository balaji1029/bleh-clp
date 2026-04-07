// Program with nested if statement with simple boolean expression

void main() {
    int a;
    bool b;
    b = 0 > 0;
    a = 23213;
    if (b) {
        print a;
        if (!b) {
            a = a + 2313;
            print a;
        }
    }
}