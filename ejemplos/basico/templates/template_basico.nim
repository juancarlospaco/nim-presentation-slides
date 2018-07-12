
template times(entero: int, codigo_a_repetir: untyped): untyped =
  for i in 1..entero:
    codigo_a_repetir


10.times:
  echo "Hola Mundo 10 veces"
