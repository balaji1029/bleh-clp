// while loop with ternary and relational operator

void main() {
    int x, y;

    x = 1;
    y = 50;
    while ((x + y > 20) && ((x < y ? x : y) < 15)) {
        x = x + 3;
        y = y - 4;
    }
}