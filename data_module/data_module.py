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
    def __init__(self, val_path="../valgrind_output/", token_path="../tokenized_sources/", test_percent=0.3, type_of_data="data"):
        self.valgrind_path = val_path
        self.tokenized_path = token_path
        self.test_examples = []
        self.training_examples = []
        self.current_train_index = 0
        self.current_test_index = 0

        max_width = 0
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

                        if len(tokens.split(",")) > max_width:
                            max_width = len(tokens.split(","))

                        if random.random() < test_percent:
                            self.test_examples.append(Example(tokens.split(","),value))
                        else:
                            self.training_examples.append(Example(tokens.split(","),value))

        self.max_width = max_width

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

    def get_function_length(self):
        return self.max_width

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
            if (i == (length - 1)):
                tokens_matrix = np.array(tokens_array)
                results_matrix = np.array(results_array)

                remaining_len = batch_size - tokens_matrix.shape[0]
                tokens_matrix = np.vstack((tokens_matrix, np.zeros([remaining_len, tokens_matrix.shape[1]])))
                results_matrix = np.concatenate((results_matrix, np.zeros(remaining_len)))
                results_matrix = np.eye(num_buckets)[results_matrix]

                yield (tokens_matrix, results_matrix)

    def train_iterator(self, num_examples, num_buckets):
        return self.generic_iterator(self.training_examples, num_examples, num_buckets)

    def test_iterator(self, num_examples, num_buckets):
        return self.generic_iterator(self.test_examples, num_examples, num_buckets)

# def main():
#     d = Data_Module()
#
#     print d.get_number_train_examples(), d.get_number_test_examples()
#
#     # train_buckets, test_buckets = d.get_bucket_breakdown()
#     # for value in sorted(train_buckets):
#     #     print value, train_buckets[value] + test_buckets[value]
#
#     # num_examples = 100
#     # num_training_iterations = int(math.ceil(d.get_number_train_examples() / num_examples))
#     # for i, (tokens_array, results_array) in enumerate(d.train_iterator(num_examples)):
#     #     print tokens_array.shape, results_array.shape
#
# main()
