
import strformat, typetraits

let
  a: int = 0b1011_1010  # Binary.
  b: int = 0b0101_0011

echo fmt"{a:#010b} ^  {b:#010b} = {(a xor b):#010b}"
echo fmt"{a:#010b} &  {b:#010b} = {(a and b):#010b}"
echo fmt"{a:#010b} |  {b:#010b} = {(a or b):#010b}"
echo fmt"{a:#010b} >> 3          = {(a shr 3):#b}"
echo fmt"{a:#010b} << 5          = {(a shl 5):#b}"
