//Checks nested while and do while loops with logical and relational expressions

void main(){
    bool flag1, flag2;
    int i, j, k;
    i=0;

    while(flag1 && i < 3){
        j=0;
        do{
            k = k*2;
            j=j+1;
        }while(flag2 || j<2);
        i = i+1;
        print(k);
    }
}