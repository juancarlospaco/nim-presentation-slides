
iterator gatificar(x: string): auto =
  for i in countdown(x.high, x.low):
    yield x[i] & " Gatitos"


for letra in "No tengo Gatitos".gatificar:
  echo letra
