
import strformat

echo fmt"""Int8
Tamanio en Bytes (Size):            { sizeof(int8) }
Maximo numero representable (Max):  { high(int8)   }
Minimo numero representable (Min):  { low(int8)    }
"""

echo fmt"""Int16
Tamanio en Bytes (Size):            { sizeof(int16) }
Maximo numero representable (Max):  { high(int16)   }
Minimo numero representable (Min):  { low(int16)    }
"""

echo fmt"""Int32
Tamanio en Bytes (Size):            { sizeof(int32) }
Maximo numero representable (Max):  { high(int32)   }
Minimo numero representable (Min):  { low(int32)    }
"""

echo fmt"""Int64
Tamanio en Bytes (Size):            { sizeof(int64) }
Maximo numero representable (Max):  { high(int64)   }
Minimo numero representable (Min):  { low(int64)    }
"""

echo fmt"""Int
Tamanio en Bytes (Size):            { sizeof(int) }
Maximo numero representable (Max):  { high(int)   }
Minimo numero representable (Min):  { low(int)    }
"""
