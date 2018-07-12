import locks

template with_lock(candadito: Lock, codigos: untyped): auto =
  acquire candadito
  try:
    codigos
  finally:
    release candadito



var mi_candado: Lock
initLock mi_candado

with_lock mi_candado:
  echo "Codigo que necesita Locking (Lock)."
