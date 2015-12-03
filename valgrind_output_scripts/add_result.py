import sys
import os

path = "../extracted_sources/401.bzip2/"
results_path = "../valgrind_output/"
num_buckets = 10

def get_bucket(val):
    return int(val / num_buckets) * num_buckets

def parse_file(input_filename, out_filename): 
    
    with open(out_filename, "w") as out_file:

        with open(input_filename, 'rb') as input_file:
            for line in input_file:
                words = line.split()
                this_path = path + words[0].replace(".","_")
                found = False
                for f in os.listdir(this_path):
                    with open(this_path + "/" + f, "rb") as next_file:
                        lines = next_file.read()
                        lines_words = lines.split()
                        endpoint = len(lines_words)
                        if endpoint > 3:
                            endpoint = 3
                        

                        for i in range(endpoint):
                            word = lines_words[i]
                            if word == words[1]:
                                found = True
                                #print "found instance of", words[1], "in", this_path + "/" +f
                                out_file.write(this_path + ": " + str(get_bucket(float(words[2]))))
        

                if not found:
                    print words[0],":",words[1]

def main(): 
    if(len(sys.argv) < 1):
        return "I need to know the program name"

    base_filename = sys.argv[1]
    results_data_path = results_path + base_filename + ".data.results"
    results_inst_path = results_path  + base_filename + ".instruction.results"
    data_filename = base_filename + ".data.results.unlinked"
    inst_filename = base_filename + ".instruction.results.unlinked"
    

    parse_file(data_filename, results_data_path)
    parse_file(inst_filename, results_inst_path)


main()
