let mycstringarray = allocCStringArray(["some string here"])
echo cstringArrayToSeq(mycstringarray)
deallocCStringArray(mycstringarray)
