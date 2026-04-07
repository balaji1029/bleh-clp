//complex expressions in if condition
int a,b,c;
void main(){
    a=4;
    b=0;
    
    if ((a+b>7) && (b*2<10))
        c=1;
    else if ((a-b)==2 ||(b>5))
        c=2;
    else
        c=3;
}