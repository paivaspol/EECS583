import random

from tensorflow.models.rnn import rnn_cell, rnn

# TODO: Could include dropout to remove overfitting issues, see ptb_word_lm.py

# configurable parameters
num_functions = 30
lstm_size = 200
batch_size = 20
num_steps = 20
vocab_size = 10000 # what is vocab_size? it is 10000 in the test set, but is this the # of distinct tokens?
correct_labels = [random.random() for _ in range(num_functions)]

# Placeholder for the inputs in a given iteration.
words = tf.placeholder(tf.int32, [batch_size, num_steps])

lstm = rnn_cell.BasicLSTMCell(lstm_size)

# Initial state of the LSTM memory.
# By default, BasicLSTMCell has a state_size of 2 * number of units.
initial_state = state = tf.zeros([batch_size, lstm.state_size])

# TODO: why do we need to use the CPU for this one?
with tf.device("/cpu:0"):
    # get_variable: get or create a new variable with that shape
    embedding = tf.get_variable("embedding", [vocab_size, lstm_size])

    # 1) embedding_lookup: we get the vector representation of every word in words (which is a [batch_size, num_steps] matrix; so we get a 3D tensor: [batch_size, num_steps, lstm_size]
    # 2) split & squeeze: some transformations to make you end up with a list of length num_steps of [batch_size, lstm_size] tensors. Note that lstm_size is the same as the # of elements in a word representation.
    inputs = tf.split(1, num_steps, tf.nn.embedding_lookup(embedding, words))
    inputs = [tf.squeeze(input_, [1]) for input_ in inputs]

# outputs is a list of length num_steps with [batch_size, lstm_size] tensors. My impression is that because of batch size, it's predicting 20 words at a time.
# states are the states after each step, with size [batch_size, lstm.state_size]
outputs, states = rnn.rnn(lstm, inputs, initial_state=initial_state)

# create a new tensor of [num_steps, batch_size, lstm_size, 1] for average pooling (if we consider it to be an image, we only have a single channel)
# window size (ksize) is [1, batch_size, lstm_size, 1] (this is somewhat arbitrary, but I do know you want to take every num_steps in a window)
# strides is [1, 1, 1, 1] because we want every single window

# TODO: is this the right way to reshape the output?
output = tf.pack(outputs)
output = tf.reshape(output, [1, batch_size, lstm_size, 1])

# TODO: perform average pooling
pooled = tf.nn.avg_pool(output, [1, 1, lstm_size, 1], [1, 1, 1, 1], 'VALID')
pooled = tf.squeeze(pooled)

# TODO: perform softmax regression
logits = tf.nn.xw_plus_b(pooled, tf.get_variable("W", [batch_size, 1]), tf.get_variable("b", [1]))

# TODO: loss function
loss = ...
