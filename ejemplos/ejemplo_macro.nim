
import macros


macro repetir_echo(): untyped =
  result = newNimNode(nnkStmtList)          # Genera un result vacio.

  var mi_bucle_for = newNimNode(nnkForStmt) # Genera un bucle for vacio.
  mi_bucle_for.add(ident("indice"))         # Usa la variable indice en el bucle for para la iteration.

  var rango_para_iterar = newNimNode(nnkInfix).add(ident("..")).add(newIntLitNode(0), newIntLitNode(9))  # Genera un range de 0 a 9.

  var mi_echo = newCall(ident("echo"), newIntLitNode(42))  # Genera echo 42

  mi_bucle_for.add(rango_para_iterar)  # Mete range para iterar en el bucle for.
  mi_bucle_for.add(mi_echo)            # Cuerpo del bucle for.

  result.add(mi_bucle_for)             # Mete el bucle for en el result.


repetir_echo()


##############################################################################
# Experimentos...

dumpTree:  # Generar y ver el Arbol AST Crudo de Templates y Macros.
  repetir_echo()


expandMacros:     # Generar y ver el codigo generado por el Macro.
  repetir_echo()  # for indice in 0 .. 9: echo(42)
