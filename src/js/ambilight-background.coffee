window.Ambilight ?= {}
class window.Ambilight.Background

  constructor: (image, canvas, strength)->
    @image = image[0]
    @canvas = canvas[0]
    @strength = strength
    @canvas.width = @image.width
    @canvas.height = @image.height
    @context = @canvas.getContext "2d"
    @context.drawImage this.image, 0, 0
    do @render

  render: =>
    @context.globalAlpha = 0.2
    y = -@strength
    while y <= @strength
      x = -@strength
      while x <= @strength
        @context.drawImage @canvas, x, y
        @context.drawImage @canvas, -(x - 1), -(y - 1) if x >= 0 and y >= 0
        x += 2
      y += 2
    @context.globalAlpha = 1.0
    $(@canvas).css "transform", "scale(3)"
    $(@canvas).css "opacity", "0.6"