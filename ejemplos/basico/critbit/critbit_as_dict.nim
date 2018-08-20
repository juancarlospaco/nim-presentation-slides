import strformat, typetraits, critbits

var critbit_as_dict: CritBitTree[int]

critbit_as_dict["key"] = 42  # Asigna un valor a "key".

echo fmt"critbit_as_dict: {critbit_as_dict.type.name} = {critbit_as_dict}"

echo critbit_as_dict["key"]   # Lee el valor de "key".

critbit_as_dict["key"] = 666  # Cambia el valor de "key".

echo fmt"critbit_as_dict: {critbit_as_dict.type.name} = {critbit_as_dict}"

echo critbit_as_dict["key"]   # Lee el valor de "key".
