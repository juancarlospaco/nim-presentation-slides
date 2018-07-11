
# http://linkode.org/#1FCAxFC9JPKRc12pyupxu6

# https://aur.archlinux.org/packages/?O=0&SeB=nd&K=mingw-w64-gcc&outdated=&SB=p&SO=d&PP=250&do_Search=Go

# https://packages.ubuntu.com/search?keywords=mingw-w64&searchon=names&suite=all&section=all

# https://packages.debian.org/search?keywords=mingw-w64&searchon=names&suite=all&section=all




$ mkdir /tmp/prueba_nim_crosscompile ; cd /tmp/prueba_nim_crosscompile/

$ echo 'echo "Hola Mundo"' > hello.nim

$ nim c --cpu:amd64 --os:windows --gcc.exe:x86_64-w64-mingw32-gcc --gcc.linkerexe:x86_64-w64-mingw32-gcc hello.nim

$ wine hello.exe
Hola Mundo
