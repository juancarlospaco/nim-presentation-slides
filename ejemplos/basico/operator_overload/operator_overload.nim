import strutils

proc `💩`(a: string): string =
  a.replace(" ", "💩")

echo 💩(" Political Promises ")
