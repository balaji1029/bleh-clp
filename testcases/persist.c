void main() {
    int x;
    string newline;
    newline = "\n";
    x = 0;
    {
        int x;
        x = 1;
        {
            int x;
            x = 2;
            {
                int x;
                x = 3;
                print x;
                print newline;
            }
            print x;
            print newline;
        }
        print x;
        print newline;
    }
    print x;
    print newline;
}