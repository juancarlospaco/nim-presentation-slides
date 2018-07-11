# Ver archivo ejemplo_nim2python.py.
# Compilar:  nim c --app:lib --out:nim2python.so nim2python.nim


import nimpy


proc funcioncita*(nombre: string): string {.exportpy.} =
  "Hola " & nombre
