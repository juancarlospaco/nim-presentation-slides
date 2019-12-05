
import strformat

echo fmt"""char
  Tamanio en Bytes (Size):            { sizeof(char) }
  Maximo numero representable (Max):  { high(char)   }
  Minimo numero representable (Min):  { low(char)    }
"""

echo fmt"""string
  Tamanio en Bytes (Size):            { sizeof(string) }
"""
