
def eratosthenes(n: int) -> list:
  sieve = [1] * 2 + [0] * (n - 1)

  for i in range(int(n ** 0.5)):
    if not sieve[i]:
      for j in range(i * i, n + 1, i):
        sieve[j] = 1

  return sieve


eratosthenes(100_000_000)
