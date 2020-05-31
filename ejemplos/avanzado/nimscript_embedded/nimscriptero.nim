import compiler/nimeval, os # nimble install compiler
writeFile("script.nims", """echo "Hello NimScript" # Script""")
let stdlib = getHomeDir() / ".choosenim/toolchains/nim-" & NimVersion / "lib"
let interpreter = createInterpreter("script.nims", [stdlib, stdlib / "pure", stdlib / "core"])
interpreter.evalScript()
interpreter.destroyInterpreter()
