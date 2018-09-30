import strutils

func `💩`(a: string): string =
  a.replace(" ", "💩")

echo 💩(" Political Promises ")
