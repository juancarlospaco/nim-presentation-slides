
# http://linkode.org/#dozWhq9aNZOYnVVZtldpb1

{.compile: "suma.c".}

proc suma2Enteros(a, b: cint): cint {.importc.}

echo suma2Enteros(1, 2)
