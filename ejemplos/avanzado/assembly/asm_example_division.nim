{.passC: "-masm=intel".}

proc example_division(): int {.asmNoStackFrame.} =
  asm """.intel_syntax noprefix
    mov eax, 6  # eax = 6
    mov edx, 0  # edx = 0
    mov ecx, 2  # ecx = 2
    div ecx     # eax / ecx
    ret         # return result
  """

echo example_division() # 6 / 2 = 3
