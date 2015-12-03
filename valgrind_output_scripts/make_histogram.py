import matplotlib.pyplot as plt
import numpy as np
import sys


def do_histogram(input_file): 
    values = []
    with open(input_file, "r") as in_file:
        for line in in_file:
            words = line.split()
            values.append(float(words[-1]) * 100)

    print "values",values
    n, bins, patches = plt.hist(values)
    
    #plt.plot(bins)
    plt.show()



def main():
    if(len(sys.argv) < 2):
        print "need to include a file"
    
    input_file = sys.argv[1]
    
    do_histogram(input_file)

main()
