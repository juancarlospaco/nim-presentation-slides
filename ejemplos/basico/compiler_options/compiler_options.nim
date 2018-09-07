

# Backend Targets.


when defined(js):
  echo "Target is JavaScript"

when defined(cpp):
  echo "Target is C++"

when defined(objc):
  echo "Target is Objetive C"


# Backend Architectures.


when defined(amd64):
  echo "Architecture is x86_64 AMD64 64Bits"

when defined(i386):
  echo "Architecture is x86 i386 32Bits"

when defined(arm):
  echo "Architecture is ARM"


# Backend Compilers.


when defined(gcc):
  echo "Compiler is GNU GCC"

when defined(clang):
  echo "Compiler is Clang"

when defined(tcc):
  echo "Compiler is Tiny C Compiler"

when defined(vcc):
  echo "Compiler is Microsoft Visual C Compiler"


# Backend Operating Systems.


when defined(linux):
  echo "OS is GNU Linux"

when defined(windows):
  echo "OS is MicroSoft Windows"

when defined(macosx):
  echo "OS is Mac OS X"

when defined(android):
  echo "OS is Android"
