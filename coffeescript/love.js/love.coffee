class @Love
  constructor: (window_conf) ->
    @graphics = new Graphics(window_conf.width, window_conf.height)
    @timer = new Timer()

  run: () =>
    @timer.step()

    @load.call()

    game_loop = =>
      @timer.step()

      @update.call(null, @timer.getDelta())

      @graphics.clear()
      @draw.call()

      @timer.nextFrame(game_loop)

    @timer.nextFrame(game_loop)

  # default functions to be overwritten by main.lua
  load: (args) ->
  update: (dt) ->
  mousepressed: (x, y, button) ->
  mousereleased: (x, y, button) ->
  keypressed: (key, unicode) ->
  keyreleased: (key, unicode) ->
  joystickpressed: (joystick, button) ->
  joystickreleased: (joystick, button) ->
  textinput: (text) ->
  draw: () ->
  focus: (has_focus) ->
  quit: () ->
