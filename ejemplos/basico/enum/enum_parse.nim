import strutils

type Fruta = enum Manzana, Banana, Kiwi

let fruto = parseEnum[Fruta]("banana")

echo fruto
echo fruto.repr
