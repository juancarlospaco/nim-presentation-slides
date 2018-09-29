iterator `-->`(a, b: int): int =
  var res = a
  while res <= b:
    yield res
    inc res

for i in 0 --> 9:
  echo i
