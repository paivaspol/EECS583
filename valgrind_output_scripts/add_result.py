import sys
import os
import string
import numpy as np
import subprocess

path ="../extracted_llvm_ir_functions/"
results_path = "../valgrind_output/"
input_path = "./"
num_buckets = 10

found = {}
values = []
filename_map = {}

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


def get_cplusplus_func_name(f):

    if f in filename_map:
        return filename_map[f]

    proc = subprocess.Popen("c++filt " + f, shell=True, stdout=subprocess.PIPE)
    out, err = proc.communicate()
    errcode = proc.returncode

    no_whitespace = out.strip()
    no_parans = no_whitespace.split("(")[0]
    last_word = no_parans.split(":")[-1]

    filename_map[f] = last_word
    return last_word

def parse_file(input_filename, out_filename, might_be_filename, sources_path, buckets): 
    not_found = {}
    with open(might_be_filename, "w+") as maybe_file:
        with open(out_filename, "w+") as out_file:
            with open(input_filename, 'rb') as input_file:
                for line in input_file:
                    words = line.split()
                    cplusplus = False

                    if words[0].endswith('.c'):
                        this_path =  words[0].replace(".c","_ll")
                    elif words[0].endswith('.cc'):
                        this_path = words[0].replace(".cc", "_llc")
                        cplusplus = True
                    elif words[0].endswith('pp'):
                        this_path = words[0].replace(".cpp", "_llpp")
                        this_path = words[0].replace(".hpp", "_llpp")
                        cplusplus = True
                    else:
                        this_path = words[0].replace('.c', '_ll')

                    found = False
                    source_found = False
                    if os.path.isdir(sources_path + this_path):
                        source_found = True
                        for f in os.listdir(sources_path + this_path):
                            if cplusplus:
                                func_name = get_cplusplus_func_name(f)
                                if words[1] ==  func_name:
                                    found = True
                                    maybe_file.write(this_path +"/" + f + "\t" + str(find_bucket(buckets, float(words[2]))) + "\n")

                            if words[1] == f:
                                found = True
                                out_file.write(this_path +"/" + f + "\t" + str(find_bucket(buckets, float(words[2]))) + "\n")

                    if not found:
                        not_found[words[0] + " : " + words[1]] = 1

                    if not found and source_found and "483" in input_filename:
                        print words[1], this_path
                            

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
    
            sources_path = path + benchname + "/"
            results_data_path = results_path + benchname + ".data.results"
            results_inst_path = results_path  + benchname + ".instruction.results"
            maybe_data_path = results_path + benchname + ".data.results.maybe"
            maybe_inst_path = results_path  + benchname + ".instruction.results.maybe"
            data_filename = benchname + ".data.results.unlinked"
            inst_filename = benchname + ".instruction.results.unlinked"
          

            not_found = parse_file(data_filename, results_data_path, maybe_data_path, sources_path, data_buckets)
            not_found2 = parse_file(inst_filename, results_inst_path, maybe_inst_path, sources_path, inst_buckets)

            with open(results_path + benchname + ".not.found", "w+") as out_file:
                for word in not_found:
                    out_file.write(word + "\n")
                for word in not_found2:
                    if word not in not_found:
                        out_file.write(word + "\n")




main()
