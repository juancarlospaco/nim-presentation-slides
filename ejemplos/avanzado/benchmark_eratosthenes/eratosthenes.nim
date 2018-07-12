import math

proc eratosthenes(n: int): auto =
  result = newSeq[int8](n + 1)
  result[0] = 1
  result[1] = 1

  for i in 0 .. sqrt(float(n)).int:
    if result[i] == 0:
      for j in countup(i * i, n, i):
        result[j] = 1


discard eratosthenes(100_000_000)
