// combination of arithmetic, logical, ternary and relational operators
void main() {
    int a, b, c;
    int result;
    a = 10;
    b = 5;
    c = 15;
    result = (a * b != 100 || c > b) ? a + b : c - a;
}