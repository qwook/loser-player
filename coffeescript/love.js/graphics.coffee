class Graphics
  constructor: () ->
    @canvas = new Canvas(200, 200)
    document.body.appendChild(@canvas.element)
    @context = @canvas.context

    @default_canvas = @canvas
    @default_context = @context

    @setColor(255, 255, 255)
    @setBackgroundColor(0, 0, 0)

  # DRAWING
  arc: () =>

  circle: () =>

  clear: () =>
    @context.save()
    @context.setTransform(1,0,0,1,0,0)
    @context.fillStyle = @background_color.html_code
    @context.fillRect(0, 0, @canvas.width, @canvas.height)
    @context.restore()

  draw: (drawable, x = 0, y = 0, r = 0, sx = 1, sy = sx, ox = 0, oy = 0, kx = 0, ky = 0) =>
    drawable.draw(@context, x, y, r, sx, sy, ox, oy, kx, ky)

  line: () =>

  point: () =>

  polygon: () =>

  print: (str, x, y) =>
    @context.fillText(str, x, y)

  printf: () =>

  rectangle: (mode, x, y, width, height) =>
    switch mode
      when "fill" then @context.fillRect(x, y, width, height)
      when "line" then @context.strokeRect(x, y, width, height)

  # OBJECT CREATION
  newCanvas: (width, height) =>
    new Canvas(width, height)

  # STATE
  setColor: (r, g, b, a = 255) =>
    @current_color = new Color(r, g, b, a)
    @context.fillStyle = @current_color.html_code
    @context.strokeStyle = @current_color.html_code
    @context.globalAlpha = @current_color.a / 255

  setBackgroundColor: (r, g, b, a = 255) =>
    @background_color = new Color(r, g, b, a)

  setCanvas: (canvas) =>
    if canvas == undefined or canvas == null
      @canvas = @default_canvas
      @context = @default_context
    else
      canvas.copyContext(@canvas.context)
      @canvas = canvas
      @context = canvas.context

  # WINDOW
  getWidth: () =>

