{.compile: "simple.c".}
proc hi*(name: cstring) {.importc.}
hi "Amigxs"
