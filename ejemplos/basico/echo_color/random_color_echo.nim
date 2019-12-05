import terminal, random

randomize()
setBackgroundColor(bgBlack)

for i in 0..9:
  setForegroundColor( sample([fgRed, fgGreen, fgYellow, fgBlue, fgMagenta, fgCyan, fgWhite]) )
  echo i
