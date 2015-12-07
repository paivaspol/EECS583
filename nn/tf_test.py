# inspired by:
# http://deeplearning.net/tutorial/lstm.html
# http://www.tensorflow.org/tutorials/recurrent/index.html

import time

import numpy as np
import tensorflow as tf
from tensorflow.models.rnn import rnn_cell, rnn

sess = tf.Session()

#####################################################################
# STEP 1: Configure parameters here.
#####################################################################
max_epochs = 10                 # number of epochs with decaying learning rate
lstm_size = 128                 # size of hidden layer in LSTM
batch_size = 20                 # num functions to analyze per batch
words_per_function = 100        # num of unrolled LSTM steps
vocab_size = 10000              # word embedding vocabulary size
num_buckets = 10                # how many buckets for final labels?
learning_rate = 1e-4            # learning rate for iterations

# TODO: haven't started test set yet so is_training is always true
# see ptb_word_lm.py for reference on why this is used (dropout)
is_training = True
keep_prob = 0.7      # can make this a placeholder
max_grad_norm = 5    # max norm for gradient

# forget_bias on LSTM cell
forget_bias = 1.0

#####################################################################
# STEP 2: Initialize variables for TF.
#####################################################################
softmax_W = tf.Variable(tf.random_uniform([lstm_size, num_buckets]))
softmax_b = tf.Variable(tf.random_uniform([num_buckets]))
words = tf.placeholder(tf.int32, [batch_size, words_per_function])
correct_labels = tf.placeholder("float", [None, 10])

#####################################################################
# STEP 3: Retrieve embeddings to get the vector representation of each
# token. We don't need this step if we find a different way to get vectors for
# each token.
#####################################################################
embedding = tf.Variable(tf.random_uniform([vocab_size, lstm_size]), name="embedding")

# 1. embedding_lookup: we get the vector representation of every word in words
#   (which is a [batch_size, words_per_function] matrix; so we get
#   a 3D tensor: [batch_size, words_per_function, lstm_size]
# 2. split & squeeze: some transformations to make us end up with a list of
#    length words_per_function of [batch_size, lstm_size] tensors.
#    Note that lstm_size is the # of elements in a word representation.
inputs = tf.split(1, words_per_function, tf.nn.embedding_lookup(embedding, words))
inputs = [tf.squeeze(input_, [1]) for input_ in inputs]

# dropout for overfitting prevention
# see tensorflow/models/rnn/ptb/ptb_word_lm.py
if is_training and keep_prob < 1:
  inputs = [tf.nn.dropout(input_, keep_prob) for input_ in inputs]

#####################################################################
# STEP 4: Set up RNN. Create LSTM cell and execute it.
# result: list of length words_per_function with
#         [batch_size, lstm_size] tensors
#####################################################################
lstm = rnn_cell.BasicLSTMCell(lstm_size, forget_bias=forget_bias)

# Dropout for overfitting prevention:
# see tensorflow/models/rnn/ptb/ptb_word_lm.py
if is_training and keep_prob < 1:
  lstm = rnn_cell.DropoutWrapper(lstm, output_keep_prob=keep_prob)

# Initial state of the LSTM memory.
# By default, BasicLSTMCell has a state_size of 2 * number of units.
initial_state = tf.zeros([batch_size, lstm.state_size])

# outputs: a list of length words_per_function with
#          [batch_size, lstm_size] tensors.
# states: the RNN state after each step, with size
#          [batch_size, lstm.state_size]
outputs, states = rnn.rnn(lstm, inputs, initial_state=initial_state)

#####################################################################
# STEP 5: Mean pooling step, take the mean of all LSTM step outputs.
# result: [batch_size, lstm_size] tensor
#####################################################################
output = tf.pack(outputs)
mean_output = tf.reduce_mean(output, 0)

#####################################################################
# STEP 6: Perform softmax regression for final output.
#####################################################################
# perform softmax regression
# results in [batch_size, num_buckets]
logits = tf.nn.softmax(tf.matmul(mean_output,softmax_W) + softmax_b, name="logistic")

#####################################################################
# STEP 7: Apply loss function using cross entropy.
#####################################################################
# clip according to http://stackoverflow.com/questions/33712178/tensorflow-nan-bug
cross_entropy = -tf.reduce_sum(correct_labels * tf.log(tf.clip_by_value(logits,1e-10,1.0)))

#####################################################################
# STEP 8: Calculate accuracy of predictions.
#####################################################################
correct_prediction = tf.equal(tf.argmax(logits,1), tf.argmax(correct_labels,1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, "float"))

#####################################################################
# STEP 9: Learn the model.
#####################################################################
lr = tf.Variable(learning_rate, trainable=False)
tvars = tf.trainable_variables()

optimizer = tf.train.AdamOptimizer(learning_rate)
train_step = optimizer.minimize(cross_entropy)

#####################################################################
# STEP 10: Write summaries for TensorBoard visualization.
#####################################################################
ce_summ = tf.scalar_summary("cross entropy", cross_entropy)
accuracy_summary = tf.scalar_summary("accuracy", accuracy)
w_hist = tf.histogram_summary("weights", softmax_W)
b_hist = tf.histogram_summary("biases", softmax_b)
y_hist = tf.histogram_summary("y", logits)

merged = tf.merge_all_summaries()
writer = tf.train.SummaryWriter("logs/", sess.graph_def)

#####################################################################
# STEP 10: Initialize the session graph.
#####################################################################
init = tf.initialize_all_variables()
sess.run(init)

#####################################################################
# STEP 11: Generate/retrieve training data.
#####################################################################
# words, which should be ids between 0 and vocab_size
# TODO: currently, this is generated via an artificial pattern
training_size = 100000
training_set = np.random.randint(0, vocab_size, [training_size, words_per_function])

# actual labels, format is a one-hot vector of length num_buckets
# TODO: currently, this is generated via an artificial pattern
training_set_sum = np.sum(training_set, 1)
training_set_mod = np.mod(training_set_sum, num_buckets)
training_set_labels = np.eye(num_buckets)[training_set_mod]

#####################################################################
# STEP 12: LEARN!
#####################################################################
for i in range(max_epochs):
    print "Starting Epoch %d..." % i
    start = time.time()
    training_used = 0
    iteration_count = 0
    while training_used < training_size:
        next_batch = training_used + batch_size
        words_generated = training_set[training_used:next_batch, :]
        correct_label_generated = training_set_labels[training_used:next_batch, :]

        summary_str, _, print_accuracy, print_cross_ent, print_lr = sess.run(
            [merged, train_step, accuracy, cross_entropy, lr],
            feed_dict= {
                words: words_generated,
                correct_labels: correct_label_generated
            })


        if iteration_count % 100 == 0:
            print "\titeration %d, accuracy %g, cross-entropy %g" % (iteration_count, print_accuracy, print_cross_ent)
            writer.add_summary(summary_str, i)

        iteration_count += 1
        training_used = next_batch

    print_exec_time = time.time() - start
    print "Epoch %d finished. Time elapsed: %ds" % (i, print_exec_time)
