import threadpool

proc myThreadedFunction(argument: int) =
  echo "Do something costly here"

for i in 0..9:
  spawn myThreadedFunction(i)
