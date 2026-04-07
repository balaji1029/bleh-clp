// Nested while do-while statements

void main() {
    int x;
    bool flag;
    int var;
    read x;

    while(x > 5 || var + 4 <= 9 && flag) {
        x = x + 5;
        do {
            var = var * 7;
        } while(var + 4 < 3 && x + 2 >= 4 || flag);
    }

    print x;
}