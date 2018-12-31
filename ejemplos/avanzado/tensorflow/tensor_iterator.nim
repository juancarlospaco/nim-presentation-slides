import arraymancer, sequtils

let mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor


# Tensors can be iterated in the proper order.
for thing in mytensor:
  echo thing

for coordinates, thing in mytensor:
  echo coordinates
  echo thing

for thing in mytensor.items:  # items returns the Items of the Tensor.
  echo thing

for thing in mytensor.pairs:  # pairs returns the Coordinates of the Tensor.
  echo thing
