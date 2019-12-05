proc printf(formatstr: cstring) {.header: "<stdio.h>", varargs.}  # C (Linux). Import function from C.
printf("%s %d\n", "Stringuito", 42)  # Use C function.
