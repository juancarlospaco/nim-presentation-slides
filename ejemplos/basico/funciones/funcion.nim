
proc mi_funcion*(a, b: int  ): int = a + b
proc mi_funcion*(a, b: float): int = int(a + b)

echo mi_funcion(1, 2)
echo mi_funcion(3.0, 4.0)
