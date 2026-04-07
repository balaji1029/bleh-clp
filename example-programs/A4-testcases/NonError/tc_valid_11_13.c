// Nested while do-while statements

void main() {
    int x;
    bool flag;
    int var;
    read x;

    while(x > 5 || var + 4 <= 9 && flag) {
        x = x + 5;
        while(flag && var == 5) {
            x = x-5;
        }
    }

    print x;
}