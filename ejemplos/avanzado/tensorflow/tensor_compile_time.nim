import arraymancer

# Compile-Time Tensor, use a const, 0 cost at Run-Time.
const mytensor = [
    [1, 2, 3],
    [4, 5, 6],
  ].toTensor


echo mytensor.rank
echo mytensor.shape
echo mytensor.strides
echo mytensor.offset
