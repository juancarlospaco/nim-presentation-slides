
block:
  echo "Esto es un block, AKA bloque. Le podes poner una etiqueta (nombre)."
  let a = "algo"
  var b = "otro"

# echo a  # Error: undeclared identifier: 'a'
# echo b  # Error: undeclared identifier: 'b'


block rutina:
  echo "Este es el bloque Rutina."
  for i in 0 .. 9:
    echo i
    if i > 5:
      echo "Aca rompemos con la Rutina."
      break rutina  # Usamos el nombre del bloque.
