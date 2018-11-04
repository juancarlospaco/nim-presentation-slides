# When Nim sees a for loop with 2 loop variables, it tries to call .pairs() on the given expression.

for enumerated, value in [1, 2, 3, 4, 5, 6, 7, 8, 9]:
  echo enumerated, " ", value
