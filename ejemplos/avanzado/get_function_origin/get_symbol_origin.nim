import macros

macro findSym(thing: typed): untyped = echo(thing.getType.lineInfo)



findSym:
  echo
