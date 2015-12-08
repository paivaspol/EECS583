import sys
import os
import string
import numpy as np

path ="../llvm_ir_sources"
results_path = "../valgrind_output/"
input_path = "./"
num_buckets = 10
not_found = {}
found = {}
values = []


def split_macros(word): 
    macros_split = word.split("(")
    rtn_words=[]
    for word in macros_split:
        rtn_words.append(word.strip(")").strip("("))

    return rtn_words

def parse_file(input_filename, out_filename, sources_path): 
    values = []
    with open(input_filename, 'rb') as input_file:
        for line in input_file:
            words = line.split()
            this_path =  words[0].replace(".","_")
            if os.path.isdir(sources_path + this_path):
                for f in os.listdir(sources_path + this_path):
                    if f == words[1]:                                                    
                        found[this_path + "/" + f] = float(words[2])
                        values.append(float(words[2]))
                        
            if this_path + "/" + f not in found:
                not_found[words[0] + " : " + words[1]] = 1


def get_buckets(type_of_file):

    values = []
    for f in os.listdir(input_path): 
        if type_of_file in f:
            with open(input_path + f, "r") as input_file:
                for line in input_file:
                    words = line.split()
                    values.append(float(words[-1])) #the last index is a value

    values.sort()
    last_zero = values.count(0)    
    no_zeros = values[last_zero:]
    np_values = np.array(no_zeros)

    buckets = np.array_split(np_values, num_buckets - 1)
    buckets.insert(0,values[:last_zero])

    #do some cleanup!
    last_endpoint = buckets[0][-1]

    for i in range(1,len(buckets)):
        last_index = 0
        to_remove = []
        while buckets[i][last_index] == last_endpoint:
            to_remove.append(last_index)
            last_index +=1

        if len(to_remove) > 0:
            to_append = np.full(len(to_remove), last_endpoint)
            buckets[i-1] = np.append(buckets[i-1],to_append)
            buckets[i] = np.delete(buckets[i], to_remove)
        last_endpoint = buckets[i][-1]

    last_endpoint = buckets[0][-1]
    for i in range(1,len(buckets)):
        bucket = buckets[i]
        if bucket[0] == last_endpoint:
            print "freak out"
        last_endpoint = bucket[-1]

    return buckets


def main(): 
    if(len(sys.argv) < 1):
        return "I need to know the program name"

    
    base_filename = sys.argv[1]
    sources_path = path + base_filename + "/"
    results_data_path = results_path + base_filename + ".data.results"
    results_inst_path = results_path  + base_filename + ".instruction.results"
    data_filename = base_filename + ".data.results.unlinked"
    inst_filename = base_filename + ".instruction.results.unlinked"
 

    data_buckets = get_buckets("data")
    inst_buckets = get_buckets("inst")
    
    
   

#    parse_file(data_filename, results_data_path, sources_path)
#    parse_file(inst_filename, results_inst_path, sources_path)

#    for word in not_found:
#        print word


main()
