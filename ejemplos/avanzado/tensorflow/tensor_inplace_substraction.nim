import arraymancer

var mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor

mytensor -= mytensor  # Tensor In-Place Substraction.
echo mytensor
