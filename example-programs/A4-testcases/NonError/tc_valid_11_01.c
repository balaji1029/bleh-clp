//Checks nested while loops with relational and arithmetic expressions

void main(){
    int i, j;
    i= 1;
    while(i<=3*9/2){
        j=1;
        while(j*2 <= i*3){
            j = j+1;
        }
        i = i+1;
    }
}