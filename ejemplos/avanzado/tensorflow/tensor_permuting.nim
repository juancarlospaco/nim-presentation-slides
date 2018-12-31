import sequtils, arraymancer

let mytensor = toSeq(1..24).toTensor.reshape(2, 3, 4)

# Permute can reorder dimensions. Input is a Tensor & the new dimension order.
echo mytensor.permute(0, 2, 1)
