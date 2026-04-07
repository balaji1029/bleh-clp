//ternary operation in if condition                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
void main(){
    int a,b,c;
    a=5;
    b=10;
    
    if ((a>b?b:0)>2)
        c=10;
    else if ((b!=0?a:5)<2)
        c=20;
    else
        c=30;
}