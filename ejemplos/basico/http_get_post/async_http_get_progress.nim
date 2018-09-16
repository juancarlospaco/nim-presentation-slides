import asyncdispatch, httpclient

proc printProgress(total, progress, speed: BiggestInt) {.async.} =
  echo total
  echo progress
  echo speed

var client = newAsyncHttpClient()
client.onProgressChanged = printProgress
discard wait_for client.getContent("http://speedtest-ams2.digitalocean.com/10mb.test")
