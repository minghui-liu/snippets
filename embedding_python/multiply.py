def multiply(a,b):
    print "Will compute", a, "times", b
    c = 0
    for i in xrange(0, a):
        c = c + b
    return c
