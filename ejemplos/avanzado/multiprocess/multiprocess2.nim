import osproc

echo countProcessors()    # Optional: Some options are for Display purposes only, but not required.
var myProcess = startProcess(command = "/bin/ls", workingDir = "/tmp", options  = {poStdErrToStdOut, poEchoCmd})

echo repr(myProcess.inputStream)
echo repr(myProcess.outputStream)
echo repr(myProcess.errorStream)

echo myProcess.inputHandle
echo myProcess.outputHandle
echo myProcess.errorHandle

echo myProcess.processID
echo myProcess.running
echo myProcess.peekExitCode
echo myProcess.hasData

# echo myProcess.waitForExit()
# myProcess.suspend()
# myProcess.resume()
# myProcess.close()
# myProcess.terminate()
# myProcess.kill()

