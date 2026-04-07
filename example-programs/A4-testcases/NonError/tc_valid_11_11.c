// Nested while do-while statements

void main() {
    int x;
    read x;

    while(x > 5) {
        x = x + 5;
        do {
            x = x - 5;
        } 
        while(x > 0);
    }

    print x;
}