proc run_at_exit() {.noconv.} =
  echo "This function will Run at Exit."

addQuitProc(run_at_exit)
