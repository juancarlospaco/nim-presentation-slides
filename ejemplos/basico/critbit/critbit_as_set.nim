import strformat, typetraits, critbits

var critbit_as_set: CritBitTree[void]

echo fmt"Type of critbit_as_set: {critbit_as_set.type.name}"
echo fmt"Len of critbit_as_set: {critbit_as_set.len}"

echo """Agrega "gatos"..."""
incl(critbit_as_set, "gatos")

echo fmt"Len of critbit_as_set: {critbit_as_set.len}"

echo """Agrega "perros"..."""
critbit_as_set.incl("perros")

echo fmt"Len of critbit_as_set: {critbit_as_set.len}"

echo """Agrega "gatos" de nuevo..."""
critbit_as_set.incl "gatos"

echo fmt"Len of critbit_as_set: {critbit_as_set.len}"
