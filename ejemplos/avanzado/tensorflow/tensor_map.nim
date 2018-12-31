import arraymancer, sugar

let mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor


echo mytensor.map(tensor_item => tensor_item + 1)

# Its the same as...
func plusone[T](tensor_item: T): T =
  tensor_item + 1

echo mytensor.map(plusone) # Map the generic function plusone() from mytensor.

# Its the same as...
echo mytensor .+ 1         # You can use implicit Broadcasting.
