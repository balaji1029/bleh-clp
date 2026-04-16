bool divides(int a, int b) {
    if (a < b) {
        return 0 == 1;
    }

    while (a > b) {
        a = a - b;
    }

    if (a == b) {
        return 0 == 0;
    }

    return 0 == 1;
}

int main() {
    int i;
    print "Enter the maximum of your prime number: ";
    string space;
    space = " ";
    read i;

    int j;
    j = 0;
    j = 2;
    while (j <= i) {
        int k;
        k = 2;
        bool isPrime;
        isPrime = 0 == 0;
        while (k < j) {
            bool div;
            div = divides(j, k);
            if (div) {
                isPrime = 0 == 1;
                k = j;
            }
            k = k + 1;
        }
        if (isPrime) {
            print j;
            print space;
        }
        j = j + 1;
    }

    return 0;
}