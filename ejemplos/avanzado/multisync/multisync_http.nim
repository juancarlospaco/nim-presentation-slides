import asyncdispatch, httpclient

type
  Clientito = HttpClient
  AsyncClientito = AsyncHttpClient

proc multisync_function(this: Clientito | AsyncClientito): Future[string] {.multisync.} =
  result =
    when this is AsyncClientito: await newAsyncHttpClient().getContent("http://httpbin.org/get")
    else: newHttpClient().getContent("http://httpbin.org/get")


proc async_example() {.async.} =
  echo await AsyncClientito().multisync_function()

wait_for async_example()              # Async

echo Clientito().multisync_function() # Sync
