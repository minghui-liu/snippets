#include <string.h>

static char result[128];

char *message() {
    strcpy(result, "Hello world!");
    return result;
}

