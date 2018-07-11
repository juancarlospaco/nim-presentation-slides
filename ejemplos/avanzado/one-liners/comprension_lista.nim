import future
# import sugar


let n = 42


#      [ Salida | Codigo                              , tipo]
echo lc[ salida | (salida <- 1..10, salida mod 2 == 0), int ]


#      [ Salida    | Codigo de la comprension de lista va aca                 , tipado estatico     ]
echo lc[ (x, y, z) | (x <- 1..n, y <- x..n, z <- y..n, x * x + y * y == z * z), tuple[a, b, c: int] ]
