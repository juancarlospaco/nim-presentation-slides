import arraymancer

let mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor

echo mytensor .* mytensor  # Tensor Element-Wise Multiplication (Hadamard product).
