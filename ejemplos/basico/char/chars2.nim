func is_vowel(c: char): bool =
  case c
  of 'a', 'e', 'i', 'o', 'u',
     'A', 'E', 'I', 'O', 'U':
    result = true
  of 'b' .. 'd', 'f' .. 'h', 'j' .. 'n', 'p' .. 't', 'v' .. 'z',
     'B' .. 'D', 'F' .. 'H', 'J' .. 'N', 'P' .. 'T', 'V' .. 'Z':
    result = false
  else:
    discard

echo is_vowel('A')
echo is_vowel('c')
