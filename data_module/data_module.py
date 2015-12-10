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

    def get_number_train_examples(self):
        return len(self.training_examples)

    def get_number_test_examples(self):
        return len(self.test_examples)


    def get_bucket_breakdown(self):
        training_buckets = {}
        testing_buckets = {}
        for example in self.training_examples:
            if example.value in training_buckets:
                training_buckets[example.value] += 1
            else:
                training_buckets[example.value] = 1

        for example in self.test_examples:
            if example.value in testing_buckets:
                testing_buckets[example.value] += 1
            else:
                testing_buckets[example.value] = 1

        return training_buckets, testing_buckets


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

    print d.get_number_train_examples(), d.get_number_test_examples()


    train_buckets, test_buckets = d.get_bucket_breakdown()
    
    for value in sorted(train_buckets):
        print value, train_buckets[value] + test_buckets[value]

    for i in range(5):
        tokens_array, results_array = d.get_training_data(100)
        print len(tokens_array),len(results_array)




main()
