{.passC: "-masm=intel".}

proc example_multiply(): int {.asmNoStackFrame.} =
  asm """.intel_syntax noprefix
    mov eax, 2  # eax = 2
    mov ebx, 2  # ebx = 2
    mul ebx     # eax * ebx
    ret         # return result
  """

echo example_multiply() # 2 * 2 = 4
