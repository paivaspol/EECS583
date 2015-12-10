import sys
import os
import string
import re

path = "../extracted_llvm_ir_functions/"
out_path = "../tokenized_sources"
token_dict = {}
counts = {}
next_token = 1
preds = {}

sep = ","

def update_paths(label, br_labels):
    global preds


    if label not in preds:
#        print "not yet seen",label
        for next_step in br_labels:
#            print "adding preds for",next_step
            preds[next_step] = {label:1}
        return False
        

    pred_dict = preds[label]
    backedge = False
    #first... is this a backedge? 
    for next_step in br_labels:
        if next_step in pred_dict or next_step == label:
            backedge = True


#    print "preds for ",label,
#    for item in pred_dict:
#        print item,
#    print


    new_dict = pred_dict
    new_dict[label] = 1

    for next_step in br_labels:
#        print "adding preds for",next_step,
#        for item in new_dict:
#            print item,
#        print 
        #for each label, append the new path to its paths array
        for next_step in br_labels:
            #if next step already has preds, do a copy item by item
            if next_step in preds:
                for item in new_dict: 
                    preds[next_step][item] = 1
            else:
                preds[next_step] = new_dict.copy()
        
    return backedge

def get_token(token):
    global next_token
    global token_dict
    global counts

    #I couldn't get the dump empty set thing to work below, so I fixed it here
    if token == "":
        return ""

    if token not in token_dict:
        token_dict[token] = next_token
        counts[token_dict[token]] = 0
        next_token += 1
        

    counts[token_dict[token]] += 1
    return str(token_dict[token])
        
def tokenize_funct(function): 
    token_function = []
    defined = False
    switch = False
    switch_text = []
    labels = {}
    curr_label = ""
    with open(function, "r") as funct_file:        
        for line in funct_file:
            line = line.strip()
            if "switch" in line:
                switch = True
                switch_text.append(line)
                continue 
                

            elif "]" in line and switch:
                switch_text.append(line)
                sw_labels = []

                for line in switch_text:
                    if " label " in line:
                        sys.stdout.flush()
                        label = line.split("label")[-1].strip()
                        remove_trailing_brace = label.split("[")[0]
                        remove_percent = remove_trailing_brace.split("%")[1]
                        sw_labels.append(remove_percent)

                backedge = update_paths(curr_label, sw_labels)
                if backedge:
#                    print "next back_sw",curr_label, switch_text
                    token_function.append(get_token("back_sw"))
                else:
#                    print "next sw",curr_label, switch_text
                    token_function.append(get_token("sw"))
                
                switch_text = []
                switch = False
            elif switch:
                switch_text.append(line)

            elif ":" in line: 
                curr_label = line.split(":")[0]
                labels[curr_label] = 1 #this is a label... add it!  


            elif len(line) == 0 or line == "}" or "define" in line or "unreachable" in line: 
                continue 

            elif "br" in line:
                found = False
                line_labels = line.split(" label ")
                br_labels = []
                for i in range(1,len(line_labels)):
                    label = line_labels[i].split(",")[0]
                    remove_percent = label.split("%")[1]
                    br_labels.append(remove_percent)

                backedge = update_paths(curr_label, br_labels)

                if backedge:
#                    print "next back_br",curr_label, line
                    token_function.append(get_token("back_br"))
                else:
#                    print "forward br",curr_label, line
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
        print benchmark
        for cfiles in os.listdir(path + "/" + benchmark ):
            if not os.path.isdir(out_path + "/" + benchmark + "/" + cfiles):
                os.makedirs(out_path + "/" + benchmark + "/" + cfiles)

            for function in os.listdir(path + "/" + benchmark + "/" + cfiles):
                funct_tokens = tokenize_funct(path + "/" + benchmark + "/" + cfiles + "/" + function)
                with open(out_path+"/"+benchmark+"/"+cfiles+"/"+function,"w+") as out_file:
                    out_file.write(funct_tokens)
            



tokenize_function()
#print "starting"
#sys.stdout.flush()
#output = tokenize_funct(path + "/401.bzip2/bzip2_ll/uncompressStream")

print len(token_dict)
for item in token_dict:
    print item, counts[token_dict[item]]

