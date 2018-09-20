proc fibonacci(n: int): int =
  if n <= 2: 1 else: fibonacci(n - 1) + fibonacci(n - 2)

echo fibonacci(9)
