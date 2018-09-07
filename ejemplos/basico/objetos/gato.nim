import marshal  # Gato-to-JSON Serialization.


type
  Gato* = object
    nombre*, especie*: string
    comida: range[0..100]
    pulgas: bool
    sexo: char

proc purr*(this: var Gato) =
  dec this.comida
  echo "Purr"

proc alimentarlo*(this: var Gato) =
  inc this.comida
  echo "Nom nom"

proc lavarlo*(this: var Gato) =
  this.pulgas = false
  echo this.pulgas

proc say*(this: var Gato, what="Meow") =
  echo what

proc meow*(this: Gato) = echo "Meow"



var gatito = Gato(nombre :  "Zoe",
                  especie : "Agora",
                  comida:   50,
                  pulgas:   false,
                  sexo:     'f')



assert gatito is Gato
assert(not gatito.pulgas)

if gatito.comida < 75:
   for i in 0..9:
     gatito.alimentarlo()

for i in 0..9:
  gatito.purr()

gatito.pulgas = true
gatito.lavarlo()
gatito.meow()
gatito.say("Meow Meow Meow!")

echo $$gatito



# # range[0..100] No permite integers > 100
# for i in 0..99:
#   gatito.alimentarlo()
