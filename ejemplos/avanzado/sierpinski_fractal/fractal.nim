# Sierpinski Carpet fractal.

func `^`*(base, exp: int): int =
  var (base, exp) = (base, exp)
  result = 1

  while exp != 0:
    if (exp and 1) != 0:
      result *= base
    exp = exp shr 1  # SHift Right
    base *= base


func in_carpet(x, y: int): bool =
  var x = x
  var y = y

  while true:
    if x == 0 or y == 0:
      return true
    if x mod 3 == 1 and y mod 3 == 1:  # MODule
      return false

    x = x div 3
    y = y div 3


proc carpet(n: int): auto =
  for i in 0 .. 3 ^ n:       # "^" de Linea 2.
    for j in 0 .. 3 ^ n:
      if in_carpet(i, j):
        stdout.write "# "
      else:
        stdout.write "  "
    echo ""


carpet(3)
