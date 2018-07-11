
template templatecita(argumento0, argumento1: string, contenido: untyped): untyped =

  echo 1 + 2       # Simula algo de logica "pre-cocida" dentro del template.

  echo argumento0  # Se puede trabajar con los argumentos que recibe.
  echo argumento1

  # Las variables y nombres dentro de un template son locales por defecto.
  var variable_injectada {.inject.} = "Gatitos" # Mete esta misma variable en el contenido copiado, existe en el contenido copiado, no es local.
  var variable_solo_local = "Perritos"          # Una variable nueva en este template, no existe en el contenido copiado, es local.

  contenido  # Se puede evaluar los contenidos que recibe, contenido puede ser un bloque de codigo gigante, aqui representado con 1 variable.


templatecita("primer argumento", "segundo argumento"):

  echo variable_injectada
  # echo variable_solo_local  # Error: undeclared identifier: 'variable_solo_local' por que NO esta Injectada con {.inject.} no existe fuera del template.

  echo "Este es el contenido, el cuerpo del template, puede ser un bloque de codigo grande y complejo."




##############################################################################
# Experimentos...
#
# import macros
#
# expandMacros:  # Generar y ver el codigo generado por el Template.
#   templatecita("primero", "segundo"): echo "cuerpo"
#
# # imprime:
#
# # echo 3
# # echo "primero"
# # echo "segundo"
# # var variable_injectada = "Gatitos"
# # var variable_solo_local_N = "Perritos"
# # echo "cuerpo"
