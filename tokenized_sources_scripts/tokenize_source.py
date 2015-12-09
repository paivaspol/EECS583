import sys
import os
import string
import re

path = "../extracted_llvm_ir_functions/"
out_path = "../tokenized_sources"
token_dict = {}
next_token = 1
sep = ","

def get_token(token):
    global next_token
    global token_dict
    
    #I couldn't get the dump empty set thing to work below, so I fixed it here
    if token == "":
        return ""

    if token not in token_dict:
        token_dict[token] = next_token
        next_token += 1

    return str(token_dict[token])
        
def tokenize_funct(function): 
    token_function = []
    defined = False
    switch = False
    switch_text = []
    labels = {}
    with open(function, "r") as funct_file:        
        for line in funct_file:
            #if there is a ':', it means that this line is a lable
            line = line.strip()
            if "switch" in line:
                switch = True
                switch_text.append(line)
                continue 
                

            elif "]" in line and switch:
                switch_text.append(line)
                backedge = False

                for line in switch_text:
                    if " label " in line:
                        sys.stdout.flush()
                        label = line.split("label")[-1].strip()
                        remove_trailing_brace = label.split("[")[0]
                        remove_percent = remove_trailing_brace.split("%")[1]
                        if remove_percent in labels:
                            backedge = True

                if backedge:
                    token_function.append(get_token("back_sw"))
                else:
                    token_function.append(get_token("sw"))

                switch = False
            elif switch:
                switch_text.append(line)

            elif ":" in line: 
                labels[line.split(":")[0]] = 1 #this is a label... add it!  

            elif len(line) == 0 or line == "}" or "define" in line or "unreachable" in line: 
                continue 

            elif "br" in line:
                found = False
                line_labels = line.split(" label ")
                for i in range(1,len(line_labels)):
                    label = line_labels[i].split(",")[0]
                    remove_percent = label.split("%")[1]
                    if remove_percent in labels:
                        found = True
                        break
                if found: 
                    token_function.append(get_token("back_br"))
                else:
                    token_function.append(get_token("br"))

            elif "=" in line: 
                split_equals = line.split("=")
                operator = (split_equals[1].split()[0])
                token_function.append(get_token(operator))
        
            elif "ret" in line:
                token_function.append(get_token("ret"))

            elif "store" in line:
                token_function.append(get_token("store"))
            
            #how should we deal with calls? 
            elif "call" in line:
                token_function.append(get_token("call"))
            else: 
                print "cannot classify line!"
                print line
                    

    return sep.join(token_function)


#check the syntax on that write call
def tokenize_function(): 
    for benchmark in os.listdir(path):
        for cfiles in os.listdir(path + "/" + benchmark ):
            if not os.path.isdir(out_path + "/" + benchmark + "/" + cfiles):
                os.makedirs(out_path + "/" + benchmark + "/" + cfiles)

            for function in os.listdir(path + "/" + benchmark + "/" + cfiles):
#                print path + "/" + benchmark + "/" + cfiles + "/" + function
                funct_tokens = tokenize_funct(path + "/" + benchmark + "/" + cfiles + "/" + function)

                with open(out_path+"/"+benchmark+"/"+cfiles+"/"+function,"w+") as out_file:
                    out_file.write(funct_tokens)
            



tokenize_function()

print len(token_dict)
for item in token_dict:
    print item, token_dict[item]
