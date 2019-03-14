import threadpool

echo MaxThreadPoolSize

proc myThreadedFunction(argument: int) =
  echo "Do something costly here"

for i in 0..9:
  spawnX myThreadedFunction(i)  # Spawns 1 new task if 1 CPU core is ready, else execute call in calling thread.
