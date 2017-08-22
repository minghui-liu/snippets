#include <Python.h>
#include <string.h>

static PyObject *hello(PyObject* self) {
    return Py_BuildValue("s", "Hello, Python extensions!\n");
}

static PyObject *message(PyObject* self, PyObject* args) {
    char *msg , result[64];
    if (!PyArg_ParseTuple(args, "s", &msg)) {
        return NULL;
    } else {
        strcpy(result, "Hello, ");
        strcat(result, msg);
        return Py_BuildValue("s", result);
    }
}

static char hello_docs[] = "hello(): Print a hello message.\n";
static char message_docs[] = "message(): Print a cutmized hello message.\n";

static PyMethodDef hello_funcs[] = {
    {"hello", (PyCFunction)hello, METH_NOARGS, hello_docs},
    {"message", (PyCFunction)message, METH_VARARGS, message_docs},
    {NULL, NULL, 0, NULL}
};

void inithello(void) {
    Py_InitModule3("hello", hello_funcs, "Extension module example");
}

