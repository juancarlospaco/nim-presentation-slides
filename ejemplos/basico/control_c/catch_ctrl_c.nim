import os

proc handler() {.noconv.} =
  raise newException(Exception, "Keyboard Interrupt: CTRL + C.")

setControlCHook(handler)



try:
  for i in 0 .. int64.high:
    sleep 500
    echo i
except Exception:
  echo "Se detecto Control + C."
