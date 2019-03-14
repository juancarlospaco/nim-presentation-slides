import threadpool
{. experimental: "parallel" .}  # Pragma to enable parallel computing.

proc myParallelFunction(argument: int) =
  echo "Do something costly here"

for i in 0..9:
  parallel: spawn myParallelFunction(i)  # Execute code block in parallel.
