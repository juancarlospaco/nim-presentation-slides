const some_module {.strdefine.} = "some_module"
template makeAnImport(module: static[string]): untyped = import module
makeAnImport(some_module & "/other_module")
