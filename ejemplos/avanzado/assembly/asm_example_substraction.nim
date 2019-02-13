{.passC: "-masm=intel".}

proc example_substract(): int {.asmNoStackFrame.} =
  asm """.intel_syntax noprefix
    mov eax, 1  # eax = 1
    sub eax, 1  # eax - 1
    ret         # return result
  """

echo example_substract() # 1 - 1 = 0
