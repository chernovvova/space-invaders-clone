function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    player = {}
    player.x = love.graphics.getWidth() / 2
    player.y = love.graphics.getHeight() / 2
    player.speed = 200
    player.sprite = love.graphics.newImage('sprites/player.png')

end

function love.update(dt)
    if love.keyboard.isDown('right') then
        player.x = player.x + player.speed * dt
    end
    if love.keyboard.isDown('left') then
        player.x = player.x - player.speed * dt
    end
end

function love.draw()
    love.graphics.draw(player.sprite, player.x, player.y, nil, 5, 5)
end