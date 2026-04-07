//complex if condition: logical+ternary+relational
int w,x,y,z;
void main(){
    w=1;
    x=2;
    y=3;

    if(((w!=0) && (x!=0)) && ((y>2)?(x<5):(w>0)))
        z=1;
    else if (((x!=0)||(y!=0)) && (y==3))
        z=2;
    else
        z=3;
}