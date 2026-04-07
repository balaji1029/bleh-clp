// Invalid Bool expressions inside do-while

void main(){
    bool x;
    string y;
    do{
        x = !x;
    }
    while (x < y);
}