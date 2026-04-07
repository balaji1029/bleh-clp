//Checks nested while and do while loops with logical and ternary expressions

void main(){
    int a, b, i, j;
    a=2;
    b=5;
    i=0;
    do{
        j=0;
        while((j<2 ? a : b) > 1){
            j = j+1;
            a = a-1;
        }
        i = i+1;
    }while((a<b ? a : b) > 0 && i <3);
}