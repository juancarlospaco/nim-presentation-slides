import arraymancer

var mytensor = [
    [ 1,  2,  3,  4,  5],  # 1
    [ 6,  7,  8,  9, 10],  # 2
    [11, 12, 13, 14, 15],  # 3
    [16, 17, 18, 19, 20],  # 4
    [21, 22, 23, 24, 25],  # 5
    # 1   2   3   4   5
  ].toTensor


mytensor[1..2, 3..4] = 9999                           # Mutation with a value.
echo mytensor

mytensor[0..1, 0..1] = [ [111, 222], [333, 444] ]     # Mutation with nested array
echo mytensor

mytensor[0..1, 0..1] = @[ @[111, 222], @[333, 444] ]  # Mutation with nested seq
echo mytensor

mytensor[^2..^1, 2..4] = mytensor[^1..^2|-1, 4..2|-1] # Mutation with a Tensor or Tensor Slice.
echo mytensor
