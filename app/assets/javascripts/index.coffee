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
  canvas = $('#canvas')[0]
  ctx = canvas.getContext('2d')
  ctx.fillStyle = 'green'
  ctx

draw = (ctx) ->
  centerWidth = $('body').width() / 2
  centerHeight = $(document).height() / 2
  ctx.save()
  ctx.beginPath()
  ctx.moveTo(centerWidth,centerHeight)
  ctx.arc(centerWidth, centerHeight, 100, CLOCK3, CLOCK5)
  ctx.closePath()
  ctx.clip()
  ctx.fillRect(0,0,1000,10000)
  ctx.restore()
  ctx.translate(50,50)
  ctx.save()
  ctx.beginPath()
  ctx.moveTo(centerWidth,centerHeight)
  ctx.arc(centerWidth, centerHeight, 100, CLOCK3, CLOCK5)
  ctx.closePath()
  ctx.clip()
  ctx.fillRect(0,0,1000,10000)
  ctx.restore()
