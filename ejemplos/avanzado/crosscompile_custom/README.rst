
Esto es 100% Opcional.

Crosscompile usando:
  ``-d:crosswin``
En lugar de:
  ``--gcc.exe:/usr/bin/x86_64-w64-mingw32-gcc --gcc.linkerexe:/usr/bin/x86_64-w64-mingw32-gcc``


##############################################################################


Ejemplos

Antes:
``nim c --cpu:amd64 --os:windows --gcc.exe:/usr/bin/x86_64-w64-mingw32-gcc --gcc.linkerexe:/usr/bin/x86_64-w64-mingw32-gcc hello.nim``

Despues:
``nim c -d:crosswin hello.nim``


##############################################################################


La ruta del ``*.CFG`` es (Crearlo si no existe):

``~/.config/nim.cfg``
