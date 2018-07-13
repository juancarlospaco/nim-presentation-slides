
type CanMove = concept x
  move(x)


type Person = object

proc move(p: Person) =
  echo "People can move!"

proc take_a_walk(walker: CanMove) =
  move(walker)

let persona = Person()

take_a_walk(persona)
