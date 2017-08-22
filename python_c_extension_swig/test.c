#include <stdio.h>

char *hello() {
    return "Hello world!\n";
}

int main() {
    printf("%s", hello());
    return 0;
}
