void main(bool a);

void main(bool d) {
    int a;
    int b, c;
    // d = a > b;
    // d = a >= b;
    // d = a == b;
    // d = a <= b;
    // d = a < b;
    // d = a != b;
    // d = !d;
    string e;
    // if ((a < b)?(a > b):(a < b)) {
    //     if (b < a)
    //         b = c;
    // } else {
    //     b = c;
    // }

    while ((a < b)?(a > b):(a < b)) {
        b =(a < b)?(b + 1):b;
        print b;
    }
}