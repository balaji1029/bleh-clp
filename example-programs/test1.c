void main() {
    int i;
    i = 0;
    // int j;
    while (i < 10) {
        int j;
        j = i * i;
        while (j < 50) {
            int k;
            int j;
            j = 0;
            k = j * j;
            print j;
            j = j + 1;
        }
        print j;
        i = i + 1;

        while (j < 50) {
            int k;
            k = j * j;
            print j;
            j = j + 1;
        }
    }
}