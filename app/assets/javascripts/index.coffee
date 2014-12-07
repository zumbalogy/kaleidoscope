π       = Math.PI
π2      = π * 2
HOUR    = π / 6
HOUR2   = π / 3
CLOCK3  = 0
CLOCK4  = HOUR
CLOCK5  = HOUR2
CLOCK6  = π / 2
CLOCK7  = π - HOUR2
CLOCK8  = π - HOUR
CLOCK9  = π
CLOCK10 = π + HOUR
CLOCK11 = π + HOUR2
CLOCK12  = π * 1.5
CLOCK1  = π2 - HOUR2
CLOCK2  = π2 - HOUR

$(window).load ->
  ctxs = setupCTXs()
  draw(ctxs)

setupCTXs = ->
  height = $(document).height()
  width = $('body').width()
  canvasElement = $("<canvas id='canvas' height='#{height}px' width='#{width}px'></canvas>")
  $('body').append(canvasElement)
  ctxs = []
  t = 0
  until t++ == 3
    canvas = $('#canvas')[0]
    ctx = canvas.getContext('2d')
    ctx.fillStyle = '#000'
    ctxs.push(ctx)
  ctxs

draw = (ctxs) ->
  ctx = ctxs[0]
  ctx.arc(100, 100, 50, CLOCK5, CLOCK7)
  ctx.stroke()

