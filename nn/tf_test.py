# inspired by:
# http://deeplearning.net/tutorial/lstm.html
# http://www.tensorflow.org/tutorials/recurrent/index.html

import numpy as np
import tensorflow as tf
from tensorflow.models.rnn import rnn_cell, rnn

# TODO: Could include dropout to remove overfitting issues, see ptb_word_lm.py

# configurable parameters
num_epochs = 15       # how many times do we run to train the model?
lstm_size = 200       # size of hidden layer in LSTM
num_functions_per_batch = 30    # num functions to analyze
words_per_function = 1000       # num of unrolled LSTM steps
vocab_size = 10000              # if using word embeddings, the number of distinct words in our vocabulary
num_buckets = 10 # make buckets for final labels (currently, every 10th percentile)

# initialize variables
softmax_W = tf.Variable(tf.zeros([lstm_size, num_buckets]))
softmax_b = tf.Variable(tf.zeros([num_buckets]))
words = tf.placeholder(tf.int32, [num_functions_per_batch, words_per_function])
correct_labels = tf.placeholder("float", [None, 10])

# I think they're using the CPU in case the GPU is being
# used for the larger computation - embedding is done on
# CPU
with tf.device("/cpu:0"):
    # get_variable: get or create a new variable with that shape
    embedding = tf.get_variable("embedding", [vocab_size, lstm_size])

    # 1) embedding_lookup: we get the vector representation of every word in words (which is a [num_functions_per_batch, words_per_function] matrix; so we get a 3D tensor: [num_functions_per_batch, words_per_function, lstm_size]
    # 2) split & squeeze: some transformations to make you end up with a list of length words_per_function of [num_functions_per_batch, lstm_size] tensors. Note that lstm_size is the same as the # of elements in a word representation.
    inputs = tf.split(1, words_per_function, tf.nn.embedding_lookup(embedding, words))
    inputs = [tf.squeeze(input_, [1]) for input_ in inputs]

# initialize LSTM cell
lstm = rnn_cell.BasicLSTMCell(lstm_size)

# Initial state of the LSTM memory.
# By default, BasicLSTMCell has a state_size of 2 * number of units.
initial_state = tf.zeros([num_functions_per_batch, lstm.state_size])

# outputs is a list of length words_per_function with [num_functions_per_batch, lstm_size] tensors.
# states are the states after each step, with size [num_functions_per_batch, lstm.state_size]
outputs, states = rnn.rnn(lstm, inputs, initial_state=initial_state)

# pooling step, taking the mean of all LSTM steps
# results in [num_functions_per_batch, lstm_size] tensor
output = tf.pack(outputs)
mean_output = tf.reduce_mean(output, 0)

# perform softmax regression
# results in [num_functions_per_batch, num_buckets]
logits = tf.nn.xw_plus_b(mean_output, softmax_W, softmax_b)

# loss function
cross_entropy = -tf.reduce_sum(correct_labels * tf.log(logits))
correct_prediction = tf.equal(tf.argmax(logits,1), tf.argmax(correct_labels,1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, "float"))

# untrainable learning rate, set it manually with some kind of decay
learning_rate = tf.Variable(0.01, trainable=False)
tvars = tf.trainable_variables()

# TODO: we could train and apply clipped gradients like in the PTB example. for now, keep it simple.

# run the optimizer
train_step = tf.train.GradientDescentOptimizer(learning_rate).minimize(cross_entropy)

init = tf.initialize_all_variables()
sess = tf.Session()
sess.run(init)

for i in range(num_epochs):
    # words, which should be ids between 0 and vocab_size
    words_generated = np.random.randint(0, vocab_size, [num_functions_per_batch, words_per_function])

    # actual labels, currently randomly generated
    # format is a one-hot vector of length num_buckets
    correct_label_generated = np.random.randint(0, 2, [num_functions_per_batch, num_buckets])

    _, train_accuracy = sess.run([train_step, accuracy],
        feed_dict={
            words: words_generated,
            correct_labels: correct_label_generated
        })

    print "step %d, training accuracy %g"%(i, train_accuracy)
