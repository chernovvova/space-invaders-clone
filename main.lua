require 'loader'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    
    local windowWidth = love.graphics.getWidth()
    local windowHeight = love.graphics.getHeight()

    scaleX = windowWidth / baseWidth
    scaleY = windowHeight / baseHeight

    loadGame()

    Gamestate.registerEvents()
    Gamestate.switch(MenuState)
end

function love.update(dt)
    Gamestate:update(dt)
end

function love.draw()
    love.graphics.push()
    love.graphics.scale(scaleX, scaleY)

    Gamestate:draw()

    love.graphics.pop()
end

function love.resize(w, h)
    scaleX = w / baseWidth
    scaleY = h / baseHeight
end