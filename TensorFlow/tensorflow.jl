using TensorFlow
using Test

sess = TensorFlow.Session()

x = TensorFlow.constant(Float64[1,2])
y = TensorFlow.Variable(Float64[3,4])
z = TensorFlow.placeholder(Float64)

w = exp(x + z + -y)

run(sess, TensorFlow.global_variables_initializer())
res = run(sess, w, Dict(z=>Float64[1,2]))
@test res[1] ≈ exp(-