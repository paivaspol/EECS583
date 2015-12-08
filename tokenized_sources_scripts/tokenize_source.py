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
    with open(function, "r") as funct_file:        
        for line in funct_file:
            #if there is a ':', it means that this line is a lable
            line = line.strip()
            if "define" in line and not defined:
                defined = True

#            elif "define" in line:
#                print "uh oh... seems like I've already defined this!"
#                print line            

            elif "switch" in line:
                switch = True
                switch_text.append(line)
                continue 
                

            elif "]" in line and switch:
                switch_text.append(line)
                backend = False
                for line in switch_text:
                    if "backedge" in line:
                        token_function.append(get_token("back_sw"))
                        backend = True
                        break
                
                if not backend:
                    token_function.append(get_token("sw"))
                switch = False

            elif switch:
                switch_text.append(line)
                continue

            elif ":" in line or len(line) == 0 or line == "}" or "unreachable" in line: 
                continue 

            elif "br" in line:
                if "backedge" in line:
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
