
proc min[T](x, y: T): auto =
  if x < y: x else: y

                        #                           min[ T ](x, y)
echo min(2, 3)          # Es la forma amigable de:  min[int](2, 3)
echo min[int](2, 3)     # Forma innecesariamente explicita pero funciona. Nadie lo escribe asi usualmente.

echo min("foo", "bar")  # min[string]("foo", "bar")
