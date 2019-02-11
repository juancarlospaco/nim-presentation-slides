{.passC: "-masm=intel".}

func exasmple(): int {.asmNoStackFrame.} =
  asm """.intel_syntax noprefix
    mov eax, 2     /* Asign 2 to eax (eax = 2)    */
    add eax, 4     /* Sum eax to 4   (eax + 4)    */
    ret            /* Return         (return eax) */
  """

echo exasmple() # 2 + 4 = 6
