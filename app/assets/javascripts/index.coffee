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
CLOCK12 = π * 1.5
CLOCK1  = π2 - HOUR2
CLOCK2  = π2 - HOUR

$(window).load ->
  ctx = setupCTX()
  draw(ctx)

toRadians = (deg) ->
  deg * π / 180

setupCTX = ->
  height = $(document).height()
  width = $('body').width()
  canvasElement = $("<canvas id='canvas' height='#{height}px' width='#{width}px'></canvas>")
  $('body').append(canvasElement)
  ctx = canvas.getContext('2d')
  ctx.fillStyle = 'green'
  ctx

draw = (ctx) ->
  ctx.beginPath()
  ctx.moveTo(100,100)
  ctx.arc(100, 100, 50, CLOCK3, CLOCK7)
  ctx.closePath()
  ctx.clip()
  ctx.fillRect(0,0,1000,1000)

