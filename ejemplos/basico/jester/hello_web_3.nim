import re, htmlgen, net, json, xmltree, strtabs, ospaths  # Nim Standard Library
import jester                                             # nimble install jester

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
  bindAddr  = "127.0.0.1"           # You can omit this block too.
  staticDir = "public"


routes:
  get "/":                          # GET /
    resp demoIndex


  get "/html":                      # GET /html
    resp h1"Hello Web" & marquee"This is HTML"


  get "/redirectme":                # GET /redirectme
    redirect "/"


  get "/hi/@name":                  # GET /hi/juan
    resp "Hello " & @"name"


  get "/hello/@name?":              # GET /hello/juan
    if @"name" == "":               # GET /hello/
      resp "No name received"
    else:
      resp "Hello " & @"name"


  get "/env":                       # GET /env
    resp getenv("USER")


  get re"^\/regex\/(\d{2})$":       # GET /regex/42
    resp $request.matches


  get "/conditional/@conditional":  # GET /conditional/true
    cond @"conditional" != "true"
    resp "@conditional is (Route 1): " & @"conditional"


  get "/conditional/@conditional":  # GET /conditional/false
    resp "@conditional is (Route 2): " & @"conditional"


  get "/setcookie":                 # GET /setcookie
    setCookie("key", "value", daysForward(9))
    resp $request.cookies


  get "/printrequest":              # GET /printrequest
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


  get "/json":                      # GET /json
      resp %*{ "JSON": true, "key": "value" }


  get "/jsonpretty":                # GET /jsonpretty
    resp pretty(%*{"JSON": true, "key": "value"})


  get "/jsonugly":                  # GET /jsonugly
    var myJson: string
    myJson.toUgly(%*{"JSON": true, "key": "value"})
    resp myJson


  get "/xml":                       # GET /xml
    let myXML = <>xml(title="SVG", alt="Some XML Here")
    resp $myXML


  get "/empty":                     # GET /empty
    resp ""


  get "/raise":                     # GET /raise
    raise newException(Exception, "My Custom Exception Message")


  error Http404:                    # Any Invalid route (Non-Existent).
    resp Http404, "<h1> My Custom HTTP 404"


  patch "/patch":                   # PATCH /patch
    var body = ""
    body.add "PATCH endpoint: "
    body.add($request.body)
    resp Http200, body


  post "/post":                     # POST /post
    resp @"key"


  # get "/sendFile":
  #   sendFile("public/someFileHere.zip")




# Check Bulma for CSS framework:           https://bulma.io
# Check Spectre for CSS framework:         https://picturepan2.github.io/spectre/experimentals.html
# Check Karax for Frontend-only framework: https://github.com/pragmagic/karax
# Check NimWC for Complete Web Framework:  https://nimwc.org/login
