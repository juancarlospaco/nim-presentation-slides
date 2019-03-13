import osproc
let (output, exitCode) = execCmdEx("echo 42")
echo output      # string
echo exitCode    # int
