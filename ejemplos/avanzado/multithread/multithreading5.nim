import threadpool, os
{. experimental: "parallel" .}  # Pragma to enable parallel computing.
for i in 0..9:
  parallel: spawn sleep(1_000)  # Execute code block in parallel.
