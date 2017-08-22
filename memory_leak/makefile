PYINC=/usr/include/python2.7
PYLIB=/usr/bin

all: test

test: test.c
	gcc test.c -I/$(PYINC) -L$(PYLIB) -lpython2.7 -o test

clean:
	rm test
