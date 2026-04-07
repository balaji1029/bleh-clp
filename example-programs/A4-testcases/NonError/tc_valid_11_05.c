//Checks nested while and do while loops with logical and relational expressions

void main(){
    int i, j;
    float x;
    string c, d;
    i=0;
    x=0.5;

    while(i < 3 && x > 0.4){
      j = 0;
      d = c;
      do{
        j=j+1;
        x=x-0.5;
      }while((j<9 && j>=5) || x>1.0);
      i=i+1;
    }
}