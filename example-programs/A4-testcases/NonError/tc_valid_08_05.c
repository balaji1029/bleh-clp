// while loop with bool variable in condition

void main() {
    int i;
    bool flag;

    i = 0;
    flag = i == 0;
    while (flag) {
        flag = (i <= 3);
        i = i + 1;
    }
}