#include <Python.h>

int
main(int argc, char *argv[]) {
	int i;
	for (i=0; i < 10000; i++) {
		Py_Initialize();
		printf("%d. ", i);
		Py_Finalize();
	}
	getc(stdin);
	printf("Done\n");
}
