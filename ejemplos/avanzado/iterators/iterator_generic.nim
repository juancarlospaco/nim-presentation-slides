
iterator iterator_generic[T](x: T): auto =
  for i in countdown(x.high, x.low):
    yield x[i]


for cosa in "Este Iterador es ademas un Generic".iterator_generic:
  echo cosa

for cosa in ['i', 't', 'e', 'r', 'a'].iterator_generic:
  echo cosa

for cosa in [1, 2, 3, 4, 5, 6, 7, 8, 9].iterator_generic:
  echo cosa
