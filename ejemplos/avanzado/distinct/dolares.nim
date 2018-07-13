
type
  Dolares* = distinct float

var ahorros = 10.Dolares

ahorros = 25.Dolares   # Funciona bien.
ahorros = Dolares(50)  # Funciona bien.
#ahorros = 25          # Error, es int no Dolares. Proba Descomentar esta linea.
