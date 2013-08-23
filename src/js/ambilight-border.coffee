window.Ambilight ?= {}
class window.Ambilight.Border

  constructor: (image, canvas, strength)->
    @image = image[0]
    @canvas = canvas[0]
    @strength = strength
    @canvas.width = @image.width * 4
    @canvas.height = @image.height * 4
    @context = @canvas.getContext "2d"
    @context.drawImage this.image, @image.width/2, @image.height/2, @image.width/2, @image.height/2
    # do @render

  render: =>
    @context.globalAlpha = 0.5
    y = -@strength
    while y <= @strength
      x = -@strength
      while x <= @strength
        @context.drawImage @canvas, x, y
        @context.drawImage @canvas, -(x - 1), -(y - 1) if x >= 0 and y >= 0
        x += 2
      y += 2
    while y <= @strength
      x = -@strength
      while x <= @strength
        @context.drawImage @canvas, x, y
        @context.drawImage @canvas, -(x - 1), -(y - 1) if x >= 0 and y >= 0
        x += 2
      y += 2
    @context.globalAlpha = 1.0
    $(@canvas).css "opacity", "0.6"