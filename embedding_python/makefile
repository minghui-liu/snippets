PYINC=/usr/include/python2.7
PYLIB=/usr/bin

all: time call

time:
	gcc time.c -I/$(PYINC) -L$(PYLIB) -lpython2.7 -o time

call:
	gcc call.c -I/$(PYINC) -L$(PYLIB) -lpython2.7 -o call

clean:
	rm time call
