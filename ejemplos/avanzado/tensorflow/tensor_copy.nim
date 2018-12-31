import sequtils, arraymancer


let mytensor = toSeq(1..24).toTensor.reshape(2, 3, 4) # Tensor from vanilla seq.

let copiedtensor = mytensor # Copy a tensor,both share data (like Numpy & Julia)

let fullcopytensor = mytensor.clone # Full Deep Copy a tensor, no shared data.


echo mytensor
echo copiedtensor
echo fullcopytensor
