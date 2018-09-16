import strutils

echo "abc".toUpperAscii

echo "ABC".toLowerAscii

echo "    a    ".strip

echo "con" & "cat" & "!"

echo "abc".capitalizeAscii

echo "A__B__C".normalize

echo "1 line".countLines

echo "1 line".splitLines

echo "a,b,c".split(",")

echo "abc".toHex

echo "42".parseInt

echo "3.14".parseFloat

echo "0x666".parseHexInt

echo "TrUe".parseBool

echo "0o666".parseOctInt

echo "a".repeat(9)

echo "a".align(9)

echo "a".alignLeft(9)

echo "a".indent(9)

echo "   a".unindent(1)

echo "abc".startsWith("ab")

echo "abc".endsWith("bc")

echo ["a", "b", "c"].join

echo "abcd".find("c")

echo "a".center(9)

echo "a x a y a z".count("a")
