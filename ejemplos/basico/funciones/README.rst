Basic Functions examples
========================

**Compile & Run:** ``nim c -r file.nim`` on the command line terminal.


## Ejemplos minimos de funciones. Aca vemos como ir mejorando una misma funcion.



# suma 2 enteros, toma 2 enteros, devuelve un entero. Se puede mejorar como esta escrita, ver debajo...

```
proc mi_funcion(a: int, b: int): int =
  return a + b
```


# Misma funcion, pero el "return" se puede omitir, simplemente retornara la variable "result", si no se especifica nada "return result" es automatico.
# "result" siempre existe dentro de una funcion, se auto inicializa al tipo de retorno especificado, si es int sera 0, si es bool sera false, etc etc.

```
proc mi_funcion(a: int, b: int): int =
  result = a + b
```


# Misma funcion, pero el "return" se puede omitir, si no se especifica nada retornara lo ultimo evaluado del bloque de codigo, es automatico.

```
proc mi_funcion(a: int, b: int): int =
  a + b
```


# Misma funcion, pero el tipo de los argumentos esta especificado 1 vez, si se repite el tipo se puede especificar 1 vez.

```
proc mi_funcion(a, b: int): int =
  a + b
```

# Misma funcion, esto es opcional!!, el retorno es "auto", el compilador intentara determinar el tipo de retorno automaticamente.

```
proc mi_funcion(a, b: int): auto =
  a + b
```


# Misma funcion, pero es Publica, es Exportada, se puede usar desde otro archivo Nim, se puede importar con "import".

```
proc mi_funcion*(a, b: int): int =
  a + b
```


# Misma funcion, pero en una linea.

```
proc mi_funcion*(a, b: int): int = a + b
```


# Misma funcion, pero con OverLoading, dependiendo el tipo de argumento sera cual funcion usara.
# No hay colision de nombres (NameSpace Collision/Shadowing), la primera toma int, la segunda toma float.

```
proc mi_funcion*(a, b: int  ): int = a + b
proc mi_funcion*(a, b: float): int = int(a + b)
```
