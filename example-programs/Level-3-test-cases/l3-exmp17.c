int a,b,c;

void main()
{
    bool d,e;
    string z;

    print "Enter value of a: ";
    read a;
    print "Enter value of b: ";
    read b;

    a = -b;

    d = a+a > b-b;
    e = b*b > a/a;

    d = !(a > b);
    c = a + b + c;
    d = (a >= b);

    z = "input";

    a = d ? 3 : 2;

    z = (d && e) ? "a" : e ? "b" : "none";
    print z;
}