import httpclient
var client = newHttpClient()
client.headers["foo"] = "bar"
echo client.get("http://httpbin.org/get").body
