// invalid comparison between string and int in if condition

void main() {
    int a;
    
    a = 0;
    if (a == "zero") {
        a = a + 10;
    }
}