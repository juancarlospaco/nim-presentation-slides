import osproc
echo execProcesses(["/bin/ls", "/bin/du", "/bin/free"])
echo execProcesses(cmds = ["/bin/ls", "/bin/du", "/bin/free"], n = countProcessors(),
                   beforeRunEvent = (proc(idx: int) = echo idx),             # Lambda (Anon Function)
                   afterRunEvent = (proc(idx: int, p: Process) = echo idx))  # Lambda (Anon Function)
