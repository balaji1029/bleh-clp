// Nested while do-while statements

void main() {
    int x;
    bool flag;
    int var;
    read x;

    do {
        x = x + 5;
        while(flag && var == 5 || x > 5) {
            x = x-5;
        }
    } while(x > 5 || var + 4 <= 9);

    print x;
}