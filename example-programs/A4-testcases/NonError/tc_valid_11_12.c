// Nested while do-while statements

void main() {
    int x;
    bool flag;
    read x;

    while(x > 5) {
        x = x + 5;
        while(flag) {
            x = x-5;
        }
    }

    print x;
}