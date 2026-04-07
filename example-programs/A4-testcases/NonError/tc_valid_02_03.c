// read int, float

int a;
float b;
void main() {
    read a;
    read b;
    if(a > 0) 
    {
        b = b*3.0;
        b = b+b*b;
        print b;
    } 
    else
    {
        if(b > 0.0) 
        {
            while(b > 0.0)
            {
                read b;
                b = b - 1.0;
            }
        } 
        else 
        {
            print "That's all folks";
        }
    }
}