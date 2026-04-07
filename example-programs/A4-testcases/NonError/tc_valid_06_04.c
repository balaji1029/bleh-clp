// nested ternary operators
void main() {
    int a, b, c, d;
    a = 10;
    b = 20;
    c = 30;
    d = (a < b && a < c) ? (b < c ? c : b) : a;
}