import sys, gc

def make_cycle():
    l = []
    l.append(l)

def main():
    collected = gc.collect()
    print "Num of garbage object collected: %d" % collected
    print "Creating cycle references..."
    for i in xrange(10):
        make_cycle()
    collected = gc.collect()
    print "Num of garbage object collected: %d" % collected

if __name__ == "__main__":
    ret = main()
    sys.exit(ret)
