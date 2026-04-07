//relational expressions with constants in if condition
void main(){
    int a;
    if (1==2 && 0==0)
        a=1;
    else if (1.1==1.1)
        a = 2;
    else
        a=0;

    print a;
}