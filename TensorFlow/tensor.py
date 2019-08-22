import tensorflow as tf;

graph = tf.Graph();
with graph.as_default():
    x = tf.constant(5, name="x_value")
    y = tf.constant(10, name="y_value")
    sum = tf.add(x,y,name="sum")

    with tf.Session() as Session:
        print("Result :", sum.eval());