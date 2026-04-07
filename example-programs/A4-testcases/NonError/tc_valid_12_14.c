// combines nested if and while
int g;

void main() {
    int i, val;
    g = 3;
    i = 0;
    val = 1;

    do{
        val = val*2;

        if((val > 2) || (g < 2)){
            print val;
        }
        else{
            print g;
        }

        i = i + 1;
    } while ((i < 5) && (val < 20));
}