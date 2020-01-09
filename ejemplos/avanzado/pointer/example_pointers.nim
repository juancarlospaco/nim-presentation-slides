# var mypointer = alloc(8)        # Pointer is nil
var mypointer = alloc0(8)         # Pointer is 00000000
mypointer = cast[pointer]("foo")  # Pointer is "foo"
assert cast[string](mypointer) == "foo"
mypointer = cast[pointer](nil)    # Pointer is nil
assert cast[string](mypointer) == ""


var mypointer2 = alloc0(8)        # Pointer is 00000000
mypointer2 = cast[pointer]("bar") # Pointer is "bar"
assert cast[string](mypointer2) == "bar"
zeroMem(mypointer2.addr, 8)       # Pointer is 00000000
assert cast[string](mypointer2) == ""
