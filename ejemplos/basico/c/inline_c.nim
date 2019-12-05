{. emit: """ void hi(char* name) { printf("Hola %s\n", name); } """ .}  # Inline C Code.
proc hi(name: cstring) {.importc.}  # Import function from C.
hi("Mundo")  # Use C function.
