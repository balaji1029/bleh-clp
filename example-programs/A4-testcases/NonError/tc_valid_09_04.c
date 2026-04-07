// Program with nested if-else statement with simple boolean expression

void main() {
    int a;
    bool b;
    b = 0 > 0;
    a = 23213;
    if (b) {
        print a;

        if (a > 23) {
            print a;
        } else {
            if (a > 23) {
                print a;
            } else {
                if (b) {
                    print a;
                }
            }
        }
    } else if (!b) {
        a = a + 2313;
        print a;
    }
}