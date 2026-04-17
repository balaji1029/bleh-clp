void main() {
    int i;
    string newline;
    newline = "\n";
    i = 0;
    // int j;
    while (i < 10) {
        int j;
        i = j;
        j = i * i;
        while (j < 50) {
            int k;
            k = j * j;
            print j;
            print newline;
            j = j + 1;
        }
        print j;
        print newline;
        i = i + 1;

        while (j < 50) {
            int o;
            o = j * j;
            print j;
            print newline;
            j = j + 1;
        }
    }
}