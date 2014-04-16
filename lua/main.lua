function love.load()
  line_box = {
    x = 40,
    y = 40
  }

  canvas = love.graphics.newCanvas(300, 400)
  print(canvas)
  local w, h = canvas:getDimensions()
  print(w)
  print(h)
end

function love.update(dt)
  line_box.y = line_box.y + 100 * dt
end

function love.draw()
  local g = love.graphics

  g.setCanvas(canvas)
  g.clear()
  g.setColor(255,0,0)
  g.print("woo", 100, 100)

  g.arc("fill", 100, 100, 50, -math.pi, -math.pi / 2)

  g.setCanvas()
  g.draw(canvas, 50, 50)

  g.setColor(255, 0, 0)
  g.rectangle("fill", 20, 20, 40, 50)

  g.setColor(0, 0, 255, 100)
  g.rectangle("fill", 40, 40, 40, 50)

  g.setColor(0, 255, 0)
  g.circle("fill", 100, 100, 25)

  g.setColor(255, 0, 0)
  love.graphics.line(200,50, 400,50, 500,300, 100,300)

  g.setColor(0, 0, 255)
  love.graphics.polygon('fill', 100, 100, 200, 100, 150, 200)

  g.setColor(0, 255, 0)
  g.rectangle("line", line_box.x, line_box.y, 50, 40)

  g.setColor(255, 255, 255)
  local fps = math.floor(love.timer.getFPS())
  local r = math.random
  g.print("FPS: " .. fps, 10, 10)
end
