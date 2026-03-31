int a;
int b;
int c;

int A(int i, int j)
{
  int x;
  if(i<=0 || j<=0)
    return (i <= 0 || j <= 0) ? 1 : 0;
  x = A(i-1,j);
  return x;
}

void p()
{   
   int y, x;
   while(a > b ){
      y=A(3,3);
      x=c+1;
   }
   print b;
   a=c+b;
}
void main()
{
    a=b*c;
    p();
    b=a+c;
    print a;
}
