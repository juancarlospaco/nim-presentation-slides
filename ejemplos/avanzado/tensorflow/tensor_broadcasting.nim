import arraymancer

let mytensor = [
    [1, 2],
    [3, 4],
  ].toTensor

# Broadcasting with operations beginning with a dot "."
echo mytensor .+ mytensor

echo mytensor .- mytensor
