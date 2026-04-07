// basic if-else statement (combination conditional expression)

void main()
{
	int a,b,c,d,e;
	a = 5;
	b = 6;
    c = 18;
    d = 12;

	if( (a>b)?(a>c):(a>d))
		print a; 
	else if(b>c ? b>a: b>d)
		print b;
	else 
		print c+d;
}
