

when nimvm:
  echo "Running in Compile-Time"
else:
  echo "Running in Run-Time"


# All Backend Targets.


when defined(js):
  echo "Target is JavaScript"

when defined(cpp):
  echo "Target is C++"

when defined(objc):
  echo "Target is Objetive C"


# All Backend Architectures.


when defined(amd64):
  echo "Architecture is x86_64 AMD64 64Bits"

when defined(i386):
  echo "Architecture is x86 i386 32Bits"

when defined(arm):
  echo "Architecture is ARM"

when defined(avr):
  echo "Architecture is AVR"

when defined(m68k):
  echo "Architecture is M68K"

when defined(alpha):
  echo "Architecture is Alpha"

when defined(powerpc):
  echo "Architecture is Apple PowerPC 32Bits"

when defined(powerpc64):
  echo "Architecture is Apple PowerPC 64Bits"

when defined(sparc):
  echo "Architecture is Sparc"

when defined(ia64):
  echo "Architecture is ia64 64Bits"

when defined(mips):
  echo "Architecture is Mips"


# All Backend Compilers.


when defined(gcc):
  echo "Compiler is GNU GCC"

when defined(nintendoSwitchGCC):
  echo "Compiler is Nintendo GCC for Switch"

when defined(llvmGcc):
  echo "Compiler is LLVM GCC"

when defined(clang):
  echo "Compiler is Clang"

when defined(vcc):
  echo "Compiler is Microsoft Visual C Compiler"

when defined(tcc):
  echo "Compiler is Tiny C Compiler"

when defined(icl):
  echo "Compiler is Intel C Compiler"

when defined(icc):
  echo "Compiler is Intel C Compiler (Mimics GCC)"

when defined(lcc):
  echo "Compiler is Local C Compiler"

when defined(bcc):
  echo "Compiler is Borland C Compiler"

when defined(dmc):
  echo "Compiler is Digital Mars C Compiler"

when defined(wcc):
  echo "Compiler is Watcom C Compiler"

when defined(ucc):
  echo "Compiler is Your C Compiler"


# All Backend Operating Systems.


when defined(linux):
  echo "OS is GNU+Linux"

when defined(windows):
  echo "OS is MicroSoft Windows"

when defined(macosx):
  echo "OS is Mac OS X"

when defined(android):
  echo "OS is Android"

when defined(dos):
  echo "OS is MicroSoft D.O.S."

when defined(nintendoswitch):
  echo "OS is Nintendo Switch"

when defined(nimvm):
  echo "OS is NimScript Virtual Machine Interpreter"

when defined(standalone):
  echo "OS is Standalone (No OS)"

when defined(netbsd):
  echo "OS is NetBSD"

when defined(freebsd):
  echo "OS is FreeBSD"

when defined(openbsd):
  echo "OS is OpenBSD"

when defined(solaris):
  echo "OS is Solaris"

when defined(netbsd):
  echo "OS is NetBSD"

when defined(macos):
  echo "OS is Mac OS (old)"

when defined(os2):
  echo "OS is OS 2"

when defined(morphos):
  echo "OS is MorphOS"

when defined(skyos):
  echo "OS is SkyOS"

when defined(irix):
  echo "OS is Irix"

when defined(dragonfly):
  echo "OS is DragonFly BSD"

when defined(aix):
  echo "OS is AIX"

when defined(qnx):
  echo "OS is QNX"

when defined(amiga):
  echo "OS is Amiga OS"

when defined(atari):
  echo "OS is Atari OS"

when defined(netware):
  echo "OS is Netware"

when defined(haiku):
  echo "OS is Haiku"

when defined(vxworks):
  echo "OS is VxWorks"

when defined(genode):
  echo "OS is Genode"
