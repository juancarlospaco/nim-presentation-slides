import asyncdispatch, httpclient

type
  Clientito = HttpClient
  AsyncClientito = AsyncHttpClient

proc multisync_example(this: Clientito | AsyncClientito): Future[string] {.multisync.} =
  let
    url = "http://httpbin.org/get"
    client =
      when this is AsyncClientito: await newAsyncHttpClient().get(url)
      else: newHttpClient().get(url)
  result = await client.body


proc async_testin {.async.} = echo await AsyncClientito().multisync_example()

wait_for async_testin()              # Async

echo Clientito().multisync_example() # Sync
