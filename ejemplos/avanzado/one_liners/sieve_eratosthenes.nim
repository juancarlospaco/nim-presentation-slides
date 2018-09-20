import sequtils, math
import future
# import sugar  # Future fue renombrado Sugar, para no confundirse con Future de Async.
const n = 30

echo to_seq(2..n).filter_it(it notin lc[to_seq(countup(x * x, n, x)) | (x <- to_seq(countup(2, int(sqrt(float(n))) + 1)) ), int])
