require 'loader'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    resize(3, 3)
    loadGame()

    Gamestate.registerEvents()
    Gamestate.switch(MenuState)
end

function love.update(dt)
    GameState:update(dt)
end

function love.draw()
    GameState:draw()
end

function love.resize(w, h)
    scaleX = w / baseWidth
    scaleY = h / baseHeight
    love.window.setMode(scaleX * baseWidth, scaleY * baseHeight)
end

function resize(sx, sy)
    love.window.setMode(sx * baseWidth, sy * baseHeight)
    scaleX, scaleY = sx, sy
end