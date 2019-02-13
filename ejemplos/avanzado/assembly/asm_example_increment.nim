{.passC: "-masm=intel".}

proc example_increment(): int {.asmNoStackFrame.} =
  asm """.intel_syntax noprefix
     mov eax, 0 # eax = 0
    inc eax     # eax = eax + 1
    inc eax     # eax = eax + 1
    ret         # return result
  """

echo example_increment() # 2
