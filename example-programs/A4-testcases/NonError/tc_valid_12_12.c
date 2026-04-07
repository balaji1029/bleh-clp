// combines nested if and while
int x;

void main(){
    int i, sum;
    x = 10;
    i = 0;
    sum = 0;

    while ((i < x) && (x > 0)) {
        if ((i + x) > 10) {
            sum = sum + i;
        }
        else {
            sum = sum + x;
        }
        i = i + 1;
    }

    print sum;
}