import sequtils, arraymancer

let mytensor = toSeq(1..24).toTensor.reshape(2, 3, 4) # Tensor from vanilla std lib seq.

echo mytensor
