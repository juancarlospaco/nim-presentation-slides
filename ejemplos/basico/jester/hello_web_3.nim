import jester, re, htmlgen, net, json, xmltree, strtabs


settings:
  port = Port(5_000)                # Set Settings inside this block.
  bindAddr = "127.0.0.1"
  staticDir = "public"


routes:
  get "/":                          # /
    resp "Hello Web"


  get "/html":                      # /html
    resp h1"Hello HTML" & marquee"Nim"


  get "/redirectme":                # /redirectme
    redirect "/"


  get "/hi/@name":                  # /hi/juan
    resp "Hello " & @"name"


  get "/hello/@name?":              # /hello/juan AND /hello/
    if @"name" == "":
      resp "No name received"
    else:
      resp "Hello " & @"name"


  get re"^\/regex\/(\d{2})$":       # /regex/42
    resp $request.matches


  get "/conditional/@conditional":  # /conditional/true
    cond @"conditional" != "true"
    resp "@conditional is (Route 1): " & @"conditional"


  get "/conditional/@conditional":  # /conditional/false
    resp "@conditional is (Route 2): " & @"conditional"


  get "/setcookie":                 # /setcookie
    setCookie("key", "value", daysForward(9))
    resp $request.cookies

  get "/printrequest":              # /printrequest
    echo repr(request.settings)
    echo request.params
    echo request.matches
    echo request.body
    echo request.headers
    echo request.formData
    echo request.port
    echo request.host
    echo request.appName
    echo request.pathInfo
    echo request.secure
    echo request.path
    echo request.cookies
    echo request.ip
    echo request.pathInfo
    echo $request.cookies
    echo result
    resp "Check Terminal!"


  get "/json":                      # /json
      resp %*{"JSON": true, "key": "value"}


  get "/xml":                       # /xml
    let myXML = <>svg(title="SVG", newText("Some XML Here"))
    resp $myXML


  get "/empty":                     # /empty
    resp ""


  get "/raise":                     # /raise
    raise newException(Exception, "My Custom Exception Message")


  error Http404:                    # Any non-existent route.
    resp Http404, "<h1> My Custom HTTP 404"


  patch "/patch":                   # /patch
    var body = ""
    body.add "PATCH endpoint: "
    body.add($request.body)
    resp Http200, body


  post "/post":                     # /post
    resp "POST endpoint"


  # get "/sendFile":
  #   sendFile("public/someFileHere.zip")
