
import strformat

echo fmt"""float32
Tamanio en Bytes (Size):            { sizeof(float32) }
Maximo numero representable (Max):  { high(float32)   }
Minimo numero representable (Min):  { low(float32)    }
"""

echo fmt"""float64
Tamanio en Bytes (Size):            { sizeof(float64) }
Maximo numero representable (Max):  { high(float64)   }
Minimo numero representable (Min):  { low(float64)    }
"""

echo fmt"""float
Tamanio en Bytes (Size):            { sizeof(float) }
Maximo numero representable (Max):  { high(float)   }
Minimo numero representable (Min):  { low(float)    }
"""
