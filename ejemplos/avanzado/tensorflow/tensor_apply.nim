import arraymancer, sugar

var mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor

# apply is the same as map but In-Place.
mytensor.apply(tensor_item => tensor_item + 1)
echo mytensor

# Its the same as...
func plusone[T](tensor_item: T): T =
  tensor_item + 1

mytensor.apply(plusone) # Apply the generic function plusone() from mytensor.
echo mytensor
