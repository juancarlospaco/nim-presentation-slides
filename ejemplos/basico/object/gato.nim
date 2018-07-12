
type
  Gato* = object
    nombre*, especie*: string
    comida: range[0..100]
    pulgas: bool
    sexo: char

proc purr*(gato: var Gato) =
  gato.comida -= 1
  echo "Purr"

proc alimentarlo*(gato: var Gato) =
  gato.comida += 1
  echo "Nom nom"

proc lavarlo*(gato: var Gato) =
  gato.pulgas = false
  echo gato.pulgas



var gatito = Gato(nombre : "Zoe",
                  especie : "Agora",
                  comida: 50,
                  pulgas: false,
                  sexo: 'f')



assert(not gatito.pulgas)

if gatito.comida < 75:
   for i in 0..9:
     gatito.alimentarlo()

for i in 0..9:
  gatito.purr()

gatito.pulgas = true
gatito.lavarlo()


# range[0..100] No permite integers > 100
# for i in 0..99:
#   gatito.alimentarlo()
