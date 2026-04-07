// global + local variable + function parameter
int global;

void main(int param){
    int local;

    local = 98765;
    global = local / 10;
    param = local + global;
    print param;
}