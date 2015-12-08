import sys
import os
import string
import re

path = "../extracted_sources/"
out_path = "../tokenized_sources"
token_dict = {}
next_token = 1
split_chars = ["(",")","{","}",";",".","*","->","[","]", "--","-=","++","+=", "+", "-","/", "==",">","<",">=","<=", "=", "&", "&&", "|","||","<<",">>",",","!","#"]
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

    return token_dict[token]

def prime_dict(): 
    for i in split_chars:
        get_token(i)

def tokenize_array(tokens, orig_string):
    token_form = []
    current_index = 0  #running total of current index.
    
    for i in range(len(tokens) -1):
        #first deal with the current token
        token = tokens[i]
        current_index += len(token) 
        next_str = str(get_token(token))
        if next_str != "":
            token_form.append(next_str)

        #now deal with the split character
        if current_index < len(orig_string):
            split_char = orig_string[current_index]
            current_index += 1
            if split_char == "-" and current_index < len(orig_string) and (orig_string[current_index] == ">" or orig_string[current_index] == "=" or orig_string[current_index] == "-"):
                split_char += orig_string[current_index]
                current_index += 1
            if split_char == "+" and current_index < len(orig_string) and (orig_string[current_index] == "=" or orig_string[current_index] == "+"):
                split_char += orig_string[current_index]
                current_index += 1
            if split_char == "=" and current_index < len(orig_string) and orig_string[current_index] == "=":
                split_char += orig_string[current_index]
                current_index += 1
            if split_char == ">" and current_index < len(orig_string) and (orig_string[current_index] == "=" or orig_string[current_index] == ">"):
                split_char += orig_string[current_index]
                current_index += 1
            if split_char == "<" and current_index < len(orig_string) and (orig_string[current_index] == "=" or orig_string[current_index] == "<"):
                split_char += orig_string[current_index]
                current_index += 1
            if split_char == "&" and current_index < len(orig_string) and orig_string[current_index] == "&":
                split_char += orig_string[current_index]
                current_index += 1
            if split_char == "|" and current_index < len(orig_string) and orig_string[current_index] == "|":
                split_char += orig_string[current_index]
                current_index += 1


            next_str = str(get_token(split_char))
            if next_str != "":
                token_form.append(next_str)



    #didn't include the last index above b/c of endpoint issue
    token = tokens[-1]
    next_str = str(get_token(token))
    if next_str != "":
        token_form.append(next_str)
        

    return sep.join(token_form)
        
def tokenize_funct(function): 
    token_function = []
    with open(function, "r") as funct_file:
        comment = False
        for line in funct_file:
            if "*/" in line:
                comment = False
                continue 
            if "/*" in line:
                comment = True
                continue
    
            if "//" in line:
                continue
            if comment:
                continue

            #right now, dealing with the damn quotes!
            if "\"" in line:
                matches = [match.start() for match in re.finditer("\"",line)]
#                if len(matches) > 2:
#                    print "We don't handle multiple \"s on a line!"
#                    print line
#                    return -1
#                if len(matches) < 2:
#                    print line
#                    print -1

                line = line[:matches[0]]+line[matches[-1]+1:]

            if "\'" in line:
                matches = [match.start() for match in re.finditer("\'",line)]
#                if len(matches) > 2:
#                    print "We don't handle multiple \'s on a line!"
#                    print line
#                    return -1
#                if len(matches) < 2:
#                    print line
#                    print -1
                line = line[:matches[0]]+line[matches[-1]+1:]
                
            no_whitespace = line.split()
               
            for word in no_whitespace:              
                split = re.split("\(|\)|\{|\}|\;|\.|\*|\-\>|\[|\]|\-\-|\-\=|\+\+|\+\=|\-|\+|\/|\=\=|\>|\<|\>\=|\<\=|\&|\&\&|\||\|\||\<\<|\>\>|\=|\,|\!|\#", word);
                token_function.append(tokenize_array(split, word))
                    
    return sep.join(token_function)
            


#check the syntax on that write call
def tokenize_function(): 
    for benchmark in os.listdir(path):

        for cfiles in os.listdir(path + "/" + benchmark ):
            if not os.path.isdir(out_path + "/" + benchmark + "/" + cfiles):
                os.makedirs(out_path + "/" + benchmark + "/" + cfiles)

            for function in os.listdir(path + "/" + benchmark + "/" + cfiles):
                funct_token = tokenize_funct(path + "/" + benchmark + "/" + cfiles + "/" + function)
                with open(out_path+"/"+benchmark+"/"+cfiles+"/"+function,"w+") as out_file:
                    out_file.write(funct_token)
            

prime_dict() #not needed, but fine
tokenize_function()

print len(token_dict)
#for item in token_dict:
#    print item, token_dict[item]
