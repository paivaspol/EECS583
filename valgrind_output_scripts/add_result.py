import sys
import os
import string
import numpy as np

path ="../extracted_llvm_ir_functions/"
results_path = "../valgrind_output/"
input_path = "./"
num_buckets = 10

found = {}
values = []


def split_macros(word): 
    macros_split = word.split("(")
    rtn_words=[]
    for word in macros_split:
        rtn_words.append(word.strip(")").strip("("))

    return rtn_words

def find_bucket(buckets, value):
    for i in range(len(buckets)):
        if value in buckets[i]:
            return i
    print "couldn't find the bucket!"

def parse_file(input_filename, out_filename, sources_path, buckets): 
    not_found = {}
    with open(out_filename, "w+") as out_file:
        with open(input_filename, 'rb') as input_file:
            for line in input_file:
                words = line.split()
                if words[0].endswith('.c'):
                    this_path =  words[0].replace(".c","_ll")
                elif words[0].endswith('.cc'):
                    this_path = words[0].replace(".cc", "_llc")
                elif words[0].endswith('.cpp'):
                    this_path = words[0].replace(".cpp", "_llpp")
                else:
                    this_path = words[0].replace('.c', '_ll')
                found = False
                if os.path.isdir(sources_path + this_path):
                    for f in os.listdir(sources_path + this_path):
                        if words[1] in f:                                                    
                            found = True
                            out_file.write(this_path +"/" + f + "\t" + str(find_bucket(buckets, float(words[2]))) + "\n")
                    
                if not found:
                    not_found[words[0] + " : " + words[1]] = 1

    return not_found


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

    data_buckets = get_buckets("data")
    inst_buckets = get_buckets("inst")

    print "data_buckets:"
    for bucket in data_buckets:
        print "len:", len(bucket), "range: (",bucket[0],",", bucket[-1],")"

    print "inst_buckets:"
    for bucket in inst_buckets:
        print "len:", len(bucket), "range: (",bucket[0],",", bucket[-1],")"

    for f in os.listdir(input_path): 
        if ".merge" in f:
            benchname = ".".join(f.split(".")[:2])
            print benchname
    
            sources_path = path + benchname + "/"
            results_data_path = results_path + benchname + ".data.results"
            results_inst_path = results_path  + benchname + ".instruction.results"
            data_filename = benchname + ".data.results.unlinked"
            inst_filename = benchname + ".instruction.results.unlinked"
          

            not_found = parse_file(data_filename, results_data_path, sources_path, data_buckets)
            not_found2 = parse_file(inst_filename, results_inst_path, sources_path, inst_buckets)

            with open(results_path + benchname + ".not.found", "w+") as out_file:
                for word in not_found:
                    out_file.write(word + "\n")
                for word in not_found2:
                    if word not in not_found:
                        out_file.write(word + "\n")




main()
