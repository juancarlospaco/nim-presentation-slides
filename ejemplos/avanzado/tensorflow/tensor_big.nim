import arraymancer

let mytensor = [
    [
      [1, 2, 3],
      [4, 5, 6],
    ],
    [
      [11, 22, 33],
      [44, 55, 66],
    ],
    [
      [111, 222, 333],
      [444, 555, 666],
    ],
    [
      [1111, 2222, 3333],
      [4444, 5555, 6666],
    ]
  ].toTensor


echo mytensor.rank
echo mytensor.shape
echo mytensor.strides
echo mytensor.offset
echo mytensor
