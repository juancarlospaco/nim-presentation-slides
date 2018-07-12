
proc imprime_casi_de_todo(cosas: varargs[string]) =
  for cosita in cosas:
    echo cosita

imprime_casi_de_todo "gato", "perro"
imprime_casi_de_todo "pizzanesa", "ensalada", "pizzetas", "helado"
#imprime_casi_de_todo "foo", 42, 3.14, "bar"  # Error, 42 y 3.14 no es string.


proc imprime_de_todo(cosas: varargs[string, `$`]) =
  for cosita in cosas:
    echo cosita

imprime_de_todo "foo", 42, 3.14, [1, 2, 3], "bar"  # Funciona Ok.
