//Checks that if condition does not have non-expressions such as read statement

void main(){
    int x, y, z;
    if(read(y)){
        x = y+z;
        y = y+z;
        z = x;
    }else{
        print(z);
    }
}