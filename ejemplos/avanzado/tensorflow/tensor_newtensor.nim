import arraymancer


# Tensor of shape 2x3 of type "bool" on backend "Cpu"
let tensor_bool = newTensor[bool]([2, 3])
echo tensor_bool.rank
echo tensor_bool.shape
echo tensor_bool.strides
echo tensor_bool.offset
echo tensor_bool


# Tensor of shape 4x3 of type "float" on backend "Cpu"
let tensor_float0 = zeros[float]([4, 3]) # Create a new tensor filled with 0.
echo tensor_float0.rank
echo tensor_float0.shape
echo tensor_float0.strides
echo tensor_float0.offset
echo tensor_float0


# Tensor of shape 4x3 of type "float" on backend "Cpu"
let tensor_float1 = ones[float]([4, 3])  # Create a new tensor filled with 1.
echo tensor_float1.rank
echo tensor_float1.shape
echo tensor_float1.strides
echo tensor_float1.offset
echo tensor_float1


let mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor
# Tensor of shape 2x2 of type "int" on backend "Cpu"
let tensor_0like = mytensor.zeros_like  # Take 1 input tensor then output 1 tensor of same shape but filled with 0.
echo tensor_0like.rank
echo tensor_0like.shape
echo tensor_0like.strides
echo tensor_0like.offset
echo tensor_0like
# Tensor of shape 2x2 of type "int" on backend "Cpu"
let tensor_1like = mytensor.ones_like   # Take 1 input tensor then output 1 tensor of same shape but filled with 1.
echo tensor_1like.rank
echo tensor_1like.shape
echo tensor_1like.strides
echo tensor_1like.offset
echo tensor_1like
