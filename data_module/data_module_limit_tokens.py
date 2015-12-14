import math
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
    def __init__(self, val_path="../valgrind_output/", token_path="../tokenized_sources_limited_tokens/", test_percent=0.2, valid_percent=0.1, type_of_data="data.results", max_tokens=200):
        self.valgrind_path = val_path
        self.tokenized_path = token_path
        self.test_examples = []
        self.training_examples = []
        self.valid_examples = []

        self.max_tokens = max_tokens

        for benchmark in os.listdir(self.valgrind_path):
            if type_of_data in benchmark:
                with open(self.valgrind_path + benchmark) as in_file:
                    print "Loading data for <" + self.valgrind_path + benchmark + ">..."
                    for line in in_file:
                        bench_name = ".".join(benchmark.split(".")[:2])
                        data = line.split()
                        value = data[1]
                        tokens = ""
                        with open(self.tokenized_path + bench_name + "/" + data[0], "r") as in_file:
                            tokens = in_file.read()

                        add = True
                        if len(tokens.split(",")) > self.max_tokens:
                            add = False
                        
                        if add:
                            rand_num = random.random()
                            if rand_num < test_percent:
                                self.test_examples.append(Example(tokens.split(","),value))
                            elif rand_num < (test_percent + valid_percent):
                                self.valid_examples.append(Example(tokens.split(","),value))
                            else:
                                self.training_examples.append(Example(tokens.split(","),value))

        print "padding training examples"
        for example in self.training_examples:
            for i in range(len(example.tokens), self.max_tokens):
                example.tokens.append(0)
        print "padding test examples"
        for example in self.test_examples:
            for i in range(len(example.tokens), self.max_tokens):
                example.tokens.append(0)
        print "padding valid examples"
        for example in self.valid_examples:
            for i in range(len(example.tokens), self.max_tokens):
                example.tokens.append(0)

    def get_number_train_examples(self):
        return len(self.training_examples)

    def get_number_test_examples(self):
        return len(self.test_examples)

    def get_number_valid_examples(self):
        return len(self.valid_examples)

    def get_function_length(self):
        return self.max_tokens

    def get_bucket_breakdown(self):
        training_buckets = {}
        testing_buckets = {}
        valid_buckets = {}

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

        for example in self.valid_examples:
            if example.value in valid_buckets:
                valid_buckets[example.value] += 1
            else:
                valid_buckets[example.value] = 1

        return training_buckets, testing_buckets, valid_buckets

    def generic_iterator(self, all_examples, batch_size, num_buckets):
        length = len(all_examples)

        tokens_array = []
        results_array = []
        for i in range(length):
            next_example = all_examples[i]
            tokens_array.append(next_example.tokens)
            results_array.append(next_example.value)

            # if you've gathered enough examples OR reached the end of set
            if (i % batch_size) == (batch_size - 1):
                results_matrix = np.array(results_array, dtype=int)
                results_matrix = np.eye(num_buckets)[results_matrix]

                yield (np.array(tokens_array), results_matrix)
                tokens_array = []
                results_array = []
            # if reached the end of set, pad with 0s
            elif (i == (length - 1)):
                tokens_matrix = np.array(tokens_array)
                results_matrix = np.array(results_array, dtype=int)

                remaining_len = batch_size - tokens_matrix.shape[0]
                tokens_matrix = np.vstack((tokens_matrix, np.zeros([remaining_len, tokens_matrix.shape[1]])))
                results_matrix = np.concatenate((results_matrix, np.zeros(remaining_len, dtype=int)))
                results_matrix = np.eye(num_buckets)[results_matrix]

                yield (tokens_matrix, results_matrix)

    def train_iterator(self, num_examples, num_buckets):
        return self.generic_iterator(self.training_examples, num_examples, num_buckets)

    def test_iterator(self, num_examples, num_buckets):
        return self.generic_iterator(self.test_examples, num_examples, num_buckets)

    def valid_iterator(self, num_examples, num_buckets):
        return self.generic_iterator(self.valid_examples, num_examples, num_buckets)


def main():
    d = Data_Module(token_path="../tokenized_sources_limited_tokens/")

    print d.get_number_train_examples(), d.get_number_test_examples(), d.get_number_valid_examples()

    
main()

