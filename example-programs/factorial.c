int factorial(int a) {
    if (a <= 1)
        return 1;
    
    int fact;
    fact = factorial(a - 1);
    
    return a * fact;
}

int main() {
    int a;
    read a;

    int fact;
    fact = factorial(a);
    print fact;
    return 0;
}