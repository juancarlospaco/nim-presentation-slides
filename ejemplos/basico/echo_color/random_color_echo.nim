import terminal, random
randomize()
setBackgroundColor(bgBlack)
for i in 0..9:
  setForegroundColor([fgRed, fgGreen, fgYellow, fgBlue, fgMagenta, fgCyan, fgWhite].rand)
  echo i
