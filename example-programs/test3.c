int x,y;
float f(int a, int b);
int z;

float f(int p, int q){
	
	return 3.5;
}

void main(){
	float r;
    int a;
	r=2.0;
	r = f(2,3);
    r = f(2,a);
    r = f(a,2);
    r = f(a,a);
}
