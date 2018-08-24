import unidecode
loadUnidecodeTable("/usr/lib/nim/pure/unidecode/unidecode.dat")  # Check path if Fail.
assert unidecode("Äußerst") == "Ausserst"
assert unidecode("Æneid") == "AEneid"
