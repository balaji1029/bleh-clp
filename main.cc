#include "compiler.hh"

bool Ast::sa_parse = false;

int main(int argc, char *argv[]) {
    int status;
    Compiler compiler(argc, argv);
    status = compiler.run();

    return status;
}