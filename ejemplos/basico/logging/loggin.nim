import logging

var
  console_logger = newConsoleLogger()
  file_logger = newFileLogger("test.log", fmtStr = verboseFmtStr)
  rolling_file_logger = newRollingFileLogger("rolling.log", fmtStr = verboseFmtStr)

addHandler(console_logger)
addHandler(file_logger)
addHandler(rolling_file_logger)

info("920410:52 accepted")
warn("4 8 15 16 23 4-- Error")
error("922044:16 SYSTEM FAILURE")
fatal("SYSTEM FAILURE SYSTEM FAILURE")
