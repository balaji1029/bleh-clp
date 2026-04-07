// invalid comparison between float and string in if condition

void main() {
    float fp;

    fp = 1.1
    if (fp == "one point one") {
        fp = 1.1 * 10;
    }
}