// Checks for combination of arithmetic, logical, and ternary operators with while statment

void main(){
    int a,b,c,d,p,q;
    float x,y;
    while(a > 0 && b + c/d > 0){
        p = (c > 0) ? 6 : (x > 9.7) ? 10 : 12;
        q = q + p;
        p = p - 1;

        if(p >= q){
            print "Yes";
        }

        if(q < p){
            print "No";
        }
    }
    if(p < q){
        print "Yes No";
    }
}