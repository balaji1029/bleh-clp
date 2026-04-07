// do-while with bool variable and ternary operator in condition

void main() {
    bool flag;
    int a, b;

    a = 0;
    b = 20;
    flag = (a == 0);
    do {
        a = a + 2;
        b = b - 1;
        flag = (a > 5);
    } while (flag || (a < b ? a : b) < 8);
}