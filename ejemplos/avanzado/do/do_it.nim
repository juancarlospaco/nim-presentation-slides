import sequtils

let powersOfTwo = [1, 2, 4, 8, 16, 32]

#    powersOfTwo filtrar    x       tal que  x mayor que 4.
echo(powersOfTwo.filter do (x: int) -> bool: x > 4)
