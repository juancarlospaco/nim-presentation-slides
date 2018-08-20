import dom, webaudio

var
  ctx = newAudioContext()
  gain = ctx.createGain()
  osc = ctx.createOscillator()
  interval2 = window.setInterval(
    proc() =
      osc.frequency.value *= 0.75
      if osc.frequency.value < 10.0:
        gain.gain.value = 0.0
    , 120)
gain.gain.value = 1.0
gain.connect(ctx.destination)
osc.type = "sawtooth"
osc.connect(gain)
osc.start()

template crea_tecla(letra: char, freq: float, padre: Node): untyped =
  let
    tecla = document.createElement("button")
    mensajes = document.querySelector("#mensajes")
  tecla.innerHTML = $letra
  tecla.setAttribute("class", "xylophone")
  tecla.setAttribute("id", "tecla_" & $letra)
  tecla.setAttribute("title", $letra)
  tecla.setAttribute("alt", $letra)
  tecla.onclick = proc(event: Event) =
    gain.gain.value = 1.0
    osc.frequency.value = freq
    mensajes.innerHTML = "Frecuencia = " & $freq
  padre.appendChild(tecla)


let contenedor = document.querySelector("#contenedor")
crea_tecla('a', 500, contenedor)
crea_tecla('b', 1000, contenedor)
crea_tecla('c', 1500, contenedor)
crea_tecla('d', 2000, contenedor)
crea_tecla('e', 2500, contenedor)
crea_tecla('f', 3000, contenedor)
crea_tecla('g', 3500, contenedor)
crea_tecla('h', 4000, contenedor)
crea_tecla('i', 4500, contenedor)
crea_tecla('j', 5000, contenedor)
crea_tecla('k', 5500, contenedor)
crea_tecla('l', 6000, contenedor)
crea_tecla('m', 6500, contenedor)
crea_tecla('n', 7000, contenedor)
crea_tecla('o', 7500, contenedor)
crea_tecla('p', 8000, contenedor)
crea_tecla('q', 8500, contenedor)
crea_tecla('r', 9000, contenedor)
crea_tecla('s', 9500, contenedor)
crea_tecla('t', 10000, contenedor)
crea_tecla('v', 10500, contenedor)
crea_tecla('w', 11000, contenedor)
crea_tecla('x', 11500, contenedor)
crea_tecla('y', 12000, contenedor)
crea_tecla('z', 13000, contenedor)
