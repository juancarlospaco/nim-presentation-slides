import jester, re, htmlgen, net, json, xmltree, strtabs, ospaths

const demoIndex = """<h1> &hearts; Jester Demo 👑 </h1> <hr>
<ul> <!-- This HTML string is for Demo purpoes only, not required -->
  <li> <a href="/">/</a> </li>
  <li> <a href="/html">/html</a> </li>
  <li> <a href="/redirectme">/redirectme</a> </li>
  <li> <a href="/hi/pepe">/hi/pepe</a> </li>
  <li> <a href="/hello/pepe">/hello/pepe</a> </li>
  <li> <a href="/hello/">/hello/</a> </li>
  <li> <a href="/env">/env</a> </li>
  <li> <a href="/conditional/true">/conditional/true</a> </li>
  <li> <a href="/conditional/false">/conditional/false</a> </li>
  <li> <a href="/setcookie">/setcookie</a> </li>
  <li> <a href="/printrequest">/printrequest</a> </li>
  <li> <a href="/json">/json</a> </li>
  <li> <a href="/jsonpretty">/jsonpretty</a> </li>
  <li> <a href="/jsonugly">/jsonugly</a> </li>
  <li> <a href="/xml">/xml</a> </li>
  <li> <a href="/empty">/empty</a> </li>
  <li> <a href="/raise">/raise</a> </li>
  <li> <a href="/404">/404</a> </li>
  <li> <form method="POST" action="/post"><input type="submit" value="POST"><input type="hidden" name="key" value="value"></form> </li>
</ul> """


settings:
  port      = Port(5_000)           # Set Settings inside this block.
  bindAddr  = "127.0.0.1"
  staticDir = "public"


routes:
  get "/":                          # /
    resp demoIndex


  get "/html":                      # /html
    resp h1"Hello Web" & marquee"This is HTML"


  get "/redirectme":                # /redirectme
    redirect "/"


  get "/hi/@name":                  # /hi/juan
    resp "Hello " & @"name"


  get "/hello/@name?":              # /hello/juan AND /hello/
    if @"name" == "":
      resp "No name received"
    else:
      resp "Hello " & @"name"


  get "/env":                # /env
    resp getenv("USER")


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
      resp %*{ "JSON": true, "key": "value" }


  get "/jsonpretty":                # /jsonpretty
    resp pretty(%*{"JSON": true, "key": "value"})


  get "/jsonugly":                  # /jsonpretty
    var myJson: string
    myJson.toUgly(%*{"JSON": true, "key": "value"})
    resp myJson


  get "/xml":                       # /xml
    let myXML = <>xml(title="SVG", alt="Some XML Here")
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
    resp @"key"


  # get "/sendFile":
  #   sendFile("public/someFileHere.zip")
