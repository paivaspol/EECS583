# inspired by:
# http://deeplearning.net/tutorial/lstm.html
# http://www.tensorflow.org/tutorials/recurrent/index.html

# To compile on CPU:
#   bazel build -c opt tensorflow/models/rnn/ptb:ptb_word_lm
# To compile on GPU:
#   bazel build -c opt tensorflow --config=cuda \
#     tensorflow/models/rnn/ptb:ptb_word_lm
# To run:
#   ./bazel-bin/.../ptb_word_lm --data_path=/tmp/simple-examples/data/

from __future__ import division

import math
import sys
import time

sys.path.insert(0,'../data_module/')

import tensorflow.python.platform

import numpy as np
import tensorflow as tf

from tensorflow.models.rnn import rnn
from tensorflow.models.rnn import rnn_cell

import data_module_limit_tokens as dm

logging = tf.logging

class LSTMPredictor(object):
  def __init__(self, is_training, config):
    self.batch_size = batch_size = config.batch_size
    self.num_steps = num_steps = config.num_steps
    size = config.hidden_size
    vocab_size = config.vocab_size
    self.num_buckets = num_buckets = config.num_buckets
    initial_learning_rate = config.initial_learning_rate

    self._input_data = tf.placeholder(tf.int32, [batch_size, num_steps])
    self._targets = tf.placeholder("float", [None, num_buckets])

    lstm = rnn_cell.BasicLSTMCell(size, forget_bias=1.0)
    if is_training and config.keep_prob < 1:
      lstm = rnn_cell.DropoutWrapper(
          lstm, output_keep_prob=config.keep_prob)

    self._initial_state = tf.zeros([self.batch_size, lstm.state_size])

    with tf.device("/cpu:0"):
      embedding = tf.get_variable("embedding", [vocab_size, size])
      inputs = tf.split(
          1, num_steps, tf.nn.embedding_lookup(embedding, self._input_data))
      inputs = [tf.squeeze(input_, [1]) for input_ in inputs]

    if is_training and config.keep_prob < 1:
      inputs = [tf.nn.dropout(input_, config.keep_prob) for input_ in inputs]

    outputs, states = rnn.rnn(lstm, inputs, initial_state=self._initial_state)

    output = tf.pack(outputs)
    mean_output = tf.reduce_mean(output, 0)

    softmax_W = tf.get_variable("softmax_W", [size, num_buckets])
    softmax_b = tf.get_variable("softmax_b", [num_buckets])
    logits = tf.nn.softmax(tf.matmul(mean_output,softmax_W) + softmax_b, name="logistic")
    self._logits = logits

    cross_entropy = -tf.reduce_sum(self.targets * tf.log(tf.clip_by_value(logits,1e-10,1.0)))
    self._cross_entropy = cross_entropy

    correct_prediction = tf.equal(tf.argmax(logits,1), tf.argmax(self.targets,1))
    accuracy = tf.reduce_mean(tf.cast(correct_prediction, "float"))
    self._accuracy = accuracy

    difference = tf.abs(tf.sub(tf.argmax(logits, 1), tf.argmax(self.targets, 1)))
    distance = tf.reduce_mean(tf.cast(difference, "float"))
    self._distance = distance

    if not is_training:
      return

    self._lr = tf.Variable(initial_learning_rate, trainable=False)
    tvars = tf.trainable_variables()
    self._train_op = tf.train.AdamOptimizer(self.lr).minimize(cross_entropy)

  @property
  def input_data(self):
    return self._input_data

  @property
  def targets(self):
    return self._targets

  @property
  def initial_state(self):
    return self._initial_state

  @property
  def cross_entropy(self):
    return self._cross_entropy

  @property
  def distance(self):
    return self._distance

  @property
  def accuracy(self):
    return self._accuracy

  @property
  def logits(self):
    return self._logits

  @property
  def lr(self):
    return self._lr

  @property
  def train_op(self):
    return self._train_op

class TrainConfig(object):
  init_scale = 0.1
  initial_learning_rate = 0.001
  num_steps = 100
  hidden_size = 128
  max_epoch = 1
  keep_prob = 0.8
  batch_size = 20
  vocab_size = 10000
  num_buckets = 10

def run_epoch(session, m, data_size, data_iterator, eval_op, verbose=False, save_logits=False):
  """Runs the model on the given data."""
  total_accuracy = 0
  total_dist = 0
  total_xent = 0
	
  final_size = int(math.ceil(data_size / m.batch_size)) * m.batch_size

  input_data = np.zeros([final_size, m.num_steps])
  actual_data = np.zeros([final_size, m.num_buckets])
  predicted_data = np.zeros([final_size, m.num_buckets])

  for step, (x, y) in enumerate(data_iterator(m.batch_size, m.num_buckets)):
    acc, dist, xent, logits, _ = session.run([m.accuracy, m.distance, m.cross_entropy, m.logits, eval_op],
                                 {m.input_data: x,
                                  m.targets: y})

    begin_index = step * m.batch_size
    end_index = (step + 1) * m.batch_size

    input_data[begin_index:end_index, :] = x
    actual_data[begin_index:end_index, :] = y
    predicted_data[begin_index:end_index, :] = logits

    total_accuracy += acc * m.batch_size
    total_dist += dist * m.batch_size
    total_xent += xent

    if verbose and (step % 10 == 0):
      print("\tstep: %d, accuracy: %g, distance: %g, xent: %g" %
            (step, acc, dist, xent))
      sys.stdout.flush()

  avg_accuracy = total_accuracy / data_size
  avg_dist = total_dist / data_size
  avg_xent = total_xent / data_size

  # if you want to save logits to file
  if save_logits:
    np.savetxt("data.csv", input_data, delimiter=",")
    np.savetxt("actual.csv", actual_data, delimiter=",")
    np.savetxt("predicted.csv", predicted_data, delimiter=",")

  return avg_accuracy, avg_dist, avg_xent

def get_config():
  return TrainConfig()

def main(unused_args):
  config = get_config()
  eval_config = get_config()
  eval_config.batch_size = 1

  print "Initializing data module..."
  d = dm.Data_Module()
  print "\tTraining Size: %d" % d.get_number_train_examples()
  print "\tValidation Size: %d" % d.get_number_valid_examples()
  print "\tTest Size: %d" % d.get_number_test_examples()
  print "Done with initializing data module."
  sys.stdout.flush()

  config.num_steps = d.get_function_length()
  eval_config.num_steps = d.get_function_length()

  print "Initializing TensorFlow graph..."
  sys.stdout.flush()
  with tf.Graph().as_default(), tf.Session() as session:
    initializer = tf.random_uniform_initializer(-config.init_scale,
                                                config.init_scale)
    with tf.variable_scope("model", reuse=None, initializer=initializer):
      print "Initializing training predictor..."
      sys.stdout.flush()
      m = LSTMPredictor(is_training=True, config=config)
    with tf.variable_scope("model", reuse=True, initializer=initializer):
      print "Initializing test predictor..."
      sys.stdout.flush()
      mtest = LSTMPredictor(is_training=False, config=eval_config)

    tf.initialize_all_variables().run()

    for i in range(config.max_epoch):
      start = time.time()
      print("Epoch: %d Learning rate: %.3f" % (i + 1, session.run(m.lr)))
      sys.stdout.flush()
      train_accuracy, train_dist, train_xent = run_epoch(session, m, d.get_number_train_examples(), d.train_iterator, m.train_op, verbose=True)
      print("Epoch: %d Train Accuracy: %.3f Train Distance: %.3f Train Cross-Entropy %.3f" % (i + 1, train_accuracy, train_dist, train_xent))
      sys.stdout.flush()
      valid_accuracy, valid_dist, valid_xent = run_epoch(session, m, d.get_number_valid_examples(), d.valid_iterator, tf.no_op())
      print("Epoch: %d Validation Accuracy: %.3f Validation Distance: %.3f Validation Cross-Entropy %.3f" % (i + 1, valid_accuracy, valid_dist, valid_xent))
      sys.stdout.flush()
      print("Epoch %d Execution Time: %ds" % (i + 1, time.time() - start))

    test_accuracy, test_dist, test_xent = run_epoch(session, mtest, d.get_number_test_examples(), d.test_iterator, tf.no_op(), save_logits=True)
    print("Test Accuracy: %.3f Test Distance: %.3f Test Cross-Entropy %.3f" % (test_accuracy, test_dist, test_xent))

if __name__ == "__main__":
  tf.app.run()
