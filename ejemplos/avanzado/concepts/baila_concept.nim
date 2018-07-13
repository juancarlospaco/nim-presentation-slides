
type
  CanDance = concept x
    dance(x) # `x` is anything that has a `dance` procedure



type
  Person = object
  Robot = object

proc dance(p: Person) =
  echo "People can dance, but not Robots!"

proc doBallet(dancer: CanDance) =
  dance(dancer)  # `dancer` can be anything that `CanDance`

let p = Person()
let r = Robot()

doBallet(p)
# doBallet(r) # ERROR
