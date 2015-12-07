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
num_norm_epochs = 5000          # number of epochs with normal learning rate
max_epochs = 6000               # number of epochs with decaying learning rate
lstm_size = 128                 # size of hidden layer in LSTM
num_functions_per_batch = 16    # num functions to analyze
words_per_function = 100        # num of unrolled LSTM steps
vocab_size = 10000              # word embedding vocabulary size
num_buckets = 10                # how many buckets for final labels?
learning_rate = 1e-4            # learning rate for iterations
# lr_decay = 0.9                  # learning rate decay

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
words = tf.placeholder(tf.int32, [num_functions_per_batch, words_per_function])
correct_labels = tf.placeholder("float", [None, 10])

#####################################################################
# STEP 3: Retrieve embeddings to get the vector representation of each
# token. We don't need this step if we find a different way to get vectors for
# each token.
#####################################################################
embedding = tf.Variable(tf.random_uniform([vocab_size, lstm_size]), name="embedding")

# 1. embedding_lookup: we get the vector representation of every word in words
#   (which is a [num_functions_per_batch, words_per_function] matrix; so we get
#   a 3D tensor: [num_functions_per_batch, words_per_function, lstm_size]
# 2. split & squeeze: some transformations to make us end up with a list of
#    length words_per_function of [num_functions_per_batch, lstm_size] tensors.
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
#         [num_functions_per_batch, lstm_size] tensors
#####################################################################
lstm = rnn_cell.BasicLSTMCell(lstm_size, forget_bias=forget_bias)

# Dropout for overfitting prevention:
# see tensorflow/models/rnn/ptb/ptb_word_lm.py
if is_training and keep_prob < 1:
  lstm = rnn_cell.DropoutWrapper(lstm, output_keep_prob=keep_prob)

# Initial state of the LSTM memory.
# By default, BasicLSTMCell has a state_size of 2 * number of units.
initial_state = tf.zeros([num_functions_per_batch, lstm.state_size])

# outputs: a list of length words_per_function with
#          [num_functions_per_batch, lstm_size] tensors.
# states: the RNN state after each step, with size
#          [num_functions_per_batch, lstm.state_size]
outputs, states = rnn.rnn(lstm, inputs, initial_state=initial_state)

#####################################################################
# STEP 5: Mean pooling step, take the mean of all LSTM step outputs.
# result: [num_functions_per_batch, lstm_size] tensor
#####################################################################
output = tf.pack(outputs)
mean_output = tf.reduce_mean(output, 0)

#####################################################################
# STEP 6: Perform softmax regression for final output.
#####################################################################
# perform softmax regression
# results in [num_functions_per_batch, num_buckets]
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
# the model does NOT train the learning rate
lr = tf.Variable(learning_rate, trainable=False)
tvars = tf.trainable_variables()

# Apply clipped gradients like in the PTB example.
# see ptb_word_lm.py for reference
# cost = tf.reduce_sum(cross_entropy) / num_functions_per_batch
# grads, _ = tf.clip_by_global_norm(tf.gradients(cost, tvars), max_grad_norm)
optimizer = tf.train.AdamOptimizer(learning_rate)
train_step = optimizer.minimize(cross_entropy)
# train_step = optimizer.apply_gradients(zip(grads, tvars))

#####################################################################
# STEP 10: Write summaries for TensorBoard visualization.
#####################################################################
ce_summ = tf.scalar_summary("cross entropy", cross_entropy)
accuracy_summary = tf.scalar_summary("accuracy", accuracy)
# w_hist = tf.histogram_summary("weights", softmax_W)
# b_hist = tf.histogram_summary("biases", softmax_b)
# y_hist = tf.histogram_summary("y", logits)

merged = tf.merge_all_summaries()
writer = tf.train.SummaryWriter("logs/", sess.graph_def)

#####################################################################
# STEP 10: Initialize the session graph.
#####################################################################
init = tf.initialize_all_variables()
sess.run(init)

#####################################################################
# STEP 11: Learn! Using num_norm_epochs epochs with regular learning rate,
# then remainder with decaying learning rate.
#####################################################################

universe_size = 100
total_training_set = np.random.randint(0, num_buckets, [universe_size, words_per_function])

training_set_sum = np.sum(total_training_set, 1)
training_set_mod = np.mod(training_set_sum, num_buckets)
training_set_labels = np.eye(num_buckets)[training_set_mod]

last_cross_entropy = None
for i in range(max_epochs):
    # words, which should be ids between 0 and vocab_size
    # TODO: currently, this is generated via an artificial pattern
    # words_generated = np.random.randint(0, num_buckets, [num_functions_per_batch, words_per_function])
    select_batch = np.random.randint(0, universe_size, num_functions_per_batch)
    words_generated = total_training_set[select_batch, :]
    correct_label_generated = training_set_labels[select_batch, :]

    # actual labels, format is a one-hot vector of length num_buckets
    # TODO: currently, this is generated via an artificial pattern, performs
    # the sum of each row of the array mod 10 and this is the label applied.
    # words_sum = np.sum(words_generated, 1)
    # words_mod = np.mod(words_sum, num_buckets)
    # correct_label_generated = np.eye(num_buckets)[words_mod]

    # set learning rate decay
    # cur_lr_decay = lr_decay ** max(i - num_norm_epochs, 0.0)
    # sess.run(tf.assign(lr, learning_rate * cur_lr_decay))

    # execute session ops
    start = time.time()
    summary_str, _, print_accuracy, print_cross_ent, print_lr = sess.run(
        [merged, train_step, accuracy, cross_entropy, lr],
        feed_dict= {
            words: words_generated,
            correct_labels: correct_label_generated
        })
    print_exec_time = time.time() - start


    if i%100 == 0:
        print "step %d, training accuracy %g, cross-entropy %g, time elapsed %ds" % (i, print_accuracy, print_cross_ent, print_exec_time)
        writer.add_summary(summary_str, i)

    # convergence condition
    # if last_cross_entropy is not None:
    #     if abs(print_cross_ent - last_cross_entropy) < 0.001:
    #         print "Model converged, cross_entropy: " + str(print_cross_ent)
    #         break
    # last_cross_entropy = print_cross_ent
