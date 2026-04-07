// combines nested if and while
int p, q;

void main() {
    int i, res;
    p = 4;
    q = 7;
    i = 0;
    res = 0;

    while ((i < 5) && (p < q)) {

        if((p + i) > (q- i)){
            res = (p > q) ? p : q;
        }
        else{
            do{
                res = res + i;
                i = i + 1;
            } while ((i < 3) || (res < 10));
        }

        i = i + 1;
    }
}