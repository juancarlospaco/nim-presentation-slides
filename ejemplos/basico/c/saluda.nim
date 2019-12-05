{.compile: "simple.c".}              # Compile & Link C.
proc hi*(name: cstring) {.importc.}  # Import funcion from C.
hi("Amigxs")                         # Use C function.
