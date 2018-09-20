import sequtils                    # Tambien existe writeFile()
echo readFile("./README.txt")      # Abre archivo, lee archivo, cierra archivo, devuelve string.
echo to_seq(lines("./README.txt")) # Abre archivo, lee archivo por lineas, cierra archivo, devuelve lista de strings.
