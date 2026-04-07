// Checks for combination of arithmetic, logical, relational and ternary operators with nesting of loops

void main(){
    int x, y, z, w, value;
    
    do {
        x = x + 10;
        y = y + 1;

        if(z * x == 6 || z * value == y + x){
            print "No";
        }
        else if(x + z / w / y == 2){
            y = (y > 4 && x < 10) ? x : w;
            print y;
        }
        else{
            print "Yes";
        }
    }
    while (x < y && x < w);

}