import arraymancer, sequtils

let
  tensor0 = toSeq(1..4).toTensor.reshape(2, 2)
  tensor1 = toSeq(5..8).toTensor.reshape(2, 2)
  tensor2 = toSeq(11..16).toTensor
  tensor2a = tensor2.reshape(3, 2)
  tensor2b = tensor2.reshape(2, 3)


# Tensors can be concatenated along an axis with concat.
echo concat(tensor0, tensor1, tensor2a, axis = 0)

echo concat(tensor0, tensor1, tensor2b, axis = 1)
