import sequtils, arraymancer

var mytensor = toSeq(1..24).toTensor.reshape(2, 3, 4) # Tensor from vanilla seq.


echo mytensor

echo mytensor[1, 1, 1]      # Tensor values can be read with array brackets.
mytensor[1, 1, 1] = 9999999 # Tensor values can be written with array brackets.

echo mytensor               # Search for 9999999 to see the edited value.
