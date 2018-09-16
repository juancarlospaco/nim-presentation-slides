import httpclient

proc printProgress(total, progress, speed: BiggestInt) =
  echo total
  echo progress
  echo speed

var client = newHttpClient()
client.onProgressChanged = printProgress
discard client.getContent("http://speedtest-ams2.digitalocean.com/10mb.test")
