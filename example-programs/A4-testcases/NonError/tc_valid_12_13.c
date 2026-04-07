// combines nested if and while
void main() {
    int a, b, max, i;
    a = 5;
    b = 8;
    i = 0;

    while (i < 3) {
        max = (a > b) ? a : b;

        if( (max - i) > 5) {
            print max;
        }
        else{
            print i;
        }

        i = i + 1;
    }
}