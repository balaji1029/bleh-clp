//Checks nested do while loops with relational and arithmetic expressions

void main(){
    float x, y;
    x = 1.0;
    do{
        y = 0.5;
        do{
            y = y + 1.0;
        }while(y*y + x < 14.0);
        x = x+1.0;
    }while(x < 3.5);
}