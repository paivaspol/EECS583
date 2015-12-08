import sys
import os
import string

path = "../extracted_sources/"
results_path = "../valgrind_output/"
num_buckets = 10
not_found = {}

def split_macros(word): 
    macros_split = word.split("(")
    rtn_words=[]
    for word in macros_split:
        rtn_words.append(word.strip(")").strip("("))

    return rtn_words

def get_bucket(val):
    return (int(val*100) / num_buckets)

def parse_file(input_filename, out_filename, sources_path): 
    
    with open(out_filename, "w") as out_file:

        with open(input_filename, 'rb') as input_file:
            for line in input_file:
                words = line.split()
                this_path =  words[0].replace(".","_")
                found = False
                if os.path.isdir(sources_path + this_path):
                    for f in os.listdir(sources_path + this_path):
                        with open(sources_path + this_path + "/" + f, "rb") as next_file:
                            lines = next_file.read()
                            lines_words = lines.split()
                            endpoint = len(lines_words)
                            if endpoint > 5:
                                endpoint = 5
                        
                                for i in range(endpoint):
                                    if lines_words[i].find("(") > 0:
                                        for word in split_macros(lines_words[i]):
                                            if word == words[1]:
                                                if found:
                                                    print "I already found this!",word
                                                found = True                                
                                                out_file.write(this_path +"/"+ f +"\t" + str(get_bucket(float(words[2]))) + "\n")                                
                
                                    else:
                                        word = lines_words[i]
                                        if word == words[1]:
                                            if found:
                                                print "I already found this!",word

                                            found = True                                
                                            out_file.write(this_path +"/"+ f +"\t" + str(get_bucket(float(words[2]))) + "\n")
        

                if not found:
                    not_found[words[0] + " : " + words[1]] = 1

def do_histogram(input_file): 
    values = []
    

def main(): 
    if(len(sys.argv) < 1):
        return "I need to know the program name"

    
    base_filename = sys.argv[1]
    sources_path = path + base_filename + "/"
    results_data_path = results_path + base_filename + ".data.results"
    results_inst_path = results_path  + base_filename + ".instruction.results"
    data_filename = base_filename + ".data.results.unlinked"
    inst_filename = base_filename + ".instruction.results.unlinked"
    

    parse_file(data_filename, results_data_path, sources_path)
    parse_file(inst_filename, results_inst_path, sources_path)

    for word in not_found:
        print word


main()
