import asyncdispatch, httpclient

proc async_http_get() {.async.} =
  echo await newAsyncHttpClient().getContent "http://httpbin.org/get"

wait_for async_http_get()
