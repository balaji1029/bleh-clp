//Checks nested while and do while loops with logical, arithmetic and relational expressions

void main(){

    int i, j, k;
    float x;

    do{
        j=0;
        k=1;
        
        while(j<2 && k>0){
            j = j+1;
            k = k-1;
        }

        i=i+1;
        x = x-0.4;

    }while((i<3 && x > 0.5) || j*k > 9);
}