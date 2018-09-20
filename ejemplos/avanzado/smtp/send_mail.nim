import smtp
var msg = createMessage("Test Title", "Nim SMTP Hello World",  @["foo@gmail.com"])
let smtpConn = newSmtp(useSsl=true, debug=true)
smtpConn.connect("smtp.gmail.com", Port 465)
smtpConn.auth("username", "password")
smtpConn.sendmail("username@gmail.com", @["foo@gmail.com"], $msg)
