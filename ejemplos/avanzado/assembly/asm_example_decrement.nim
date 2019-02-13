{.passC: "-masm=intel".}

proc example_decrement(): int {.asmNoStackFrame.} =
  asm """.intel_syntax noprefix
     mov eax, 4 # eax = 4
    dec eax     # eax = eax - 1
    dec eax     # eax = eax - 1
    ret         # return result
  """

echo example_decrement() # 2
