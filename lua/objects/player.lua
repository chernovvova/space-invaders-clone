Player = GameObject:extend()

function Player:new(x, y)
    Player.super.new(self, x, y)

    self.velocity = 200
    self.sprite = love.graphics.newImage('assets/sprites/player.png')
end

function Player:update(dt)
    if love.keyboard.isDown('right') then
        player.x = player.x + player.velocity * dt
    end
    if love.keyboard.isDown('left') then
        player.x = player.x - player.velocity * dt
    end
end

function Player:draw()
    love.graphics.draw(player.sprite, player.x, player.y, nil, 5, 5)
end