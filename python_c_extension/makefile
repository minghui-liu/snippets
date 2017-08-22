PYLIB = /usr/bin
PYINC = /usr/include/python2.7

hello.so: hello.c
	gcc hello.c -g -I$(PYINC) -shared -L$(PYLIB) -lpython2.7 -o hello.so -fPIC

clean:
	rm -f hello.so core
