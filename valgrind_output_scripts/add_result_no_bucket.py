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

def parse_file(input_filename, out_filename, sources_path): 
    not_found = {}
    with open(out_filename, "w+") as out_file:
        with open(input_filename, 'rb') as input_file:
            for line in input_file:
                words = line.split()
                if words[0].endswith('.c'):
                    this_path =  words[0].replace(".c","_ll")
                elif words[0].endswith('.cc'):
                    this_path = words[0].replace(".cc", "_llc")
                elif words[0].endswith('pp'):
                    this_path = words[0].replace(".cpp", "_llpp")
                    this_path = words[0].replace(".hpp", "_llpp")
                else:
                    this_path = words[0].replace('.c', '_ll')

                found = False
                source_found = False
                if os.path.isdir(sources_path + this_path):
                    source_found = True
                    for f in os.listdir(sources_path + this_path):
                        if words[1] == f:
                            found = True
                            out_file.write(this_path +"/" + f + "\t" + str(float(words[2])) + "\n")

                if not found:
                    not_found[words[0] + " : " + words[1]] = 1

    return not_found


def main(): 
    for f in os.listdir(input_path): 
        if ".merge" in f:
            benchname = ".".join(f.split(".")[:2])
    
            sources_path = path + benchname + "/"
            results_data_path = results_path + benchname + ".data.no.bucket.results"
            data_filename = benchname + ".data.results.unlinked"
          
            not_found = parse_file(data_filename, results_data_path, sources_path)

main()
