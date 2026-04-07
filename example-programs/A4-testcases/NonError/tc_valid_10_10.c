//if conditions with long chain of relational expressions
int a,b,c,d,x;
void main(){
    a=5;
    b=10;
    c=3;
    d=8;
    if((a<b)&&(b>c)&&(c<=d)&&(a!=d))
        x=1;
    else if ((a>b)&&(c>d))
        x=2;
    else
        x=3;
    print x;    
}