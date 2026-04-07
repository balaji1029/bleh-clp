// combines nested if and while
void main() {
    int a,i;
    a = 5;
    i = 0;

    while (i < a){
        if (i < 3){
            print i;
        }
        else{
            print a;
        }
        i = i + 1;
    }
}