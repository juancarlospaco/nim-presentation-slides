# http://linkode.org/#dozWhq9aNZOYnVVZtldpb1

{.compile: "suma.c".}  # Compile & Link C.

func suma2Enteros(a, b: cint): cint {.importc.}  # Import function from C.

echo suma2Enteros(1, 2)  # Use C function.
