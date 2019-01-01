import arraymancer     # nimble install arraymancer

let mytensor = [
    [1, 2, 3],
    [4, 5, 6],
  ].toTensor


echo mytensor is Tensor # true
echo mytensor.sizeOf    # 144
echo mytensor.rank      # 2
echo mytensor.shape     # [2, 3]
echo mytensor.strides   # [3, 1]
echo mytensor.offset    # 0
echo mytensor           # Tensor[int] of shape [2, 3] of type "int" on backend "CPU".
# |1      2       3|
# |4      5       6|
