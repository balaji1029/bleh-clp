// do-while loop with bool variable in condition

void main() {
    int i;
    bool flag;

    i = 30;
    flag = (i == 30);
    do {
        flag = (i > 18);
        i = i - 2;
    } while (flag);
}