$(window).load ->
  ctx = setupCTX()
  draw(ctx)

setupCTX = ->
  height = $(document).height() * 0.5
  width = $('body').width() * 0.5
  canvasElement = $("<canvas id='canvas' height='#{height}px' width='#{width}px'></canvas>")
  $('body').append(canvasElement)
  canvas = $('#canvas')[0]
  ctx = canvas.getContext('2d')
  ctx.fillStyle = '#000'
  ctx

draw = (ctx) ->
  ctx.fillRect(10,10,10,10)
  ctx.fillRect(21,21,10,10)
