import sys
import os
import string
import random
import numpy as np

class Example: 
    def __init__(self, tokens,value):
        self.tokens = tokens
        self.value = value

class Data_Module: 
    def __init__(self, val_path = "../vagrind_output/", token_path = "../tokenized_sources/", test_percent = .5, type_of_data = "data"):
        self.valgrind_path = "../valgrind_output/"
        self.tokenized_path = "../tokenized_sources/"
        self.test_examples = []
        self.training_examples = []        
        self.current_train_index = 0
        self.current_test_index = 0

        max_width = 0
        for benchmark in os.listdir(self.valgrind_path):
            if type_of_data in benchmark:                
                with open(self.valgrind_path + benchmark) as in_file:
                    for line in in_file:
                        bench_name = ".".join(benchmark.split(".")[:2])
                        data = line.split()
                        value = data[1]
                        tokens = ""
                        with open(self.tokenized_path + bench_name + "/" + data[0], "r") as in_file:
                            tokens = in_file.read()

                        if len(tokens.split(",")) > max_width:
                            max_width = len(tokens.split(","))
                        
                        if random.random() > test_percent:
                            self.test_examples.append(Example(tokens.split(","),value))
                        else:
                            self.training_examples.append(Example(tokens.split(","),value))

        for example in self.training_examples:
            for i in range(len(example.tokens), max_width): 
                example.tokens.append(0)
        for example in self.test_examples:
            for i in range(len(example.tokens), max_width): 
                example.tokens.append(0)
            
        
    #return tne next num_examples examples... wrap around if we go over? 
    def get_training_data(self,num_examples):
        tokens_array = []
        results_array = []
        while num_examples > 0: 
            next_example = self.training_examples[self.current_train_index]
            tokens_array.append(next_example.tokens)
            results_array.append(next_example.value)

            #increment index with wraparound
            self.current_train_index += 1
            if self.current_train_index >= len(self.training_examples):
                self.current_train_index = 0
            
            num_examples -=1

        return np.array(tokens_array), np.array(results_array)

    def get_testing_data(self,num_examples):
        tokens_array = []
        results_array = []
        while num_examples > 0: 
            next_example = self.test_examples[self.current_test_index]
            tokens_array.append(next_example.tokens)
            results_array.append(next_example.value)

            #increment index with wraparound
            self.current_test_index += 1
            if self.current_test_index >= len(self.test_examples):
                self.current_test_index = 0
            
            num_examples -=1

        return np.array(tokens_array), np.array(results_array)
    


def main():
    d = Data_Module()

    for i in range(100):
        print len(tokens_array),len(results_array)
        print len(tokens_array[0])

