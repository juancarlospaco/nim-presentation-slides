import httpclient
var multipart = newMultipartData()
multipart["foo"] = "bar"
echo newHttpClient().postContent("http://httpbin.org/post", multipart=multipart)
