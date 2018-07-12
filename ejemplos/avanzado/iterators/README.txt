
Iteradores (Iterators), tambien llamado Iteradores-enlinea (Inline-Iterators).

Inline-Iterators son los Iteradores por defecto en Nim,

son compilados a Loops optimizados de alta performance.

Un Iterador puede ser tambien un Generic, como es iterator_generic.nim

En el ejemplo iterator.nim, un Iterator toma un string invierte el orden de las letras.



nim c -r iterator.nim

nim c -r iterator_generic.nim
