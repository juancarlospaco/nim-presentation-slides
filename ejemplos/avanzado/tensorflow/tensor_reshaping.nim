import sequtils, arraymancer

# Reshape function will change the shape of a Tensor.
# The number of elements in the new and old shape must be the same.
echo toSeq(1..24).toTensor.reshape(2, 3, 4)
