import arraymancer

let mytensor = [
    [ 1,  2,  3,  4,  5],  # 1
    [ 6,  7,  8,  9, 10],  # 2
    [11, 12, 13, 14, 15],  # 3
    [16, 17, 18, 19, 20],  # 4
    [21, 22, 23, 24, 25],  # 5
    # 1   2   3   4   5
  ].toTensor


echo mytensor              # No Sliced, whole Tensor, 5x5.

echo mytensor[1..2, 3..4]  # Simple Slice.

echo mytensor[3.._, _]     # Span Slice.

echo mytensor[_..^3, _]    # Slice Until (inclusive).

echo mytensor[_.._|2, _]   # Step.

echo mytensor[^1..0|-1, _] # Reverse Step.
