//nested ternary in if condition
void main(){
    int a,b,c;
    a=0;
    b=5;

    if(((a!=0)?1:((b!=0)?2:3))>1)
        c=11;
    else if (((b!=0)?0:1)!=0)
        c=22;
    else
        c=33;
} 