proc mi_funcion(a, b: int  ): int =
  return a + b

proc mi_funcion(a, b: float): int =
  return int(a + b)


echo mi_funcion(1, 2)
echo mi_funcion(3.0, 4.0)
