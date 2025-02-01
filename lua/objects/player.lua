Player = GameObject:extend()

function Player:new(x, y)
    Player.super.new(self, x, y)

    self.velocity = 200
    self.sprite = love.graphics.newImage('assets/sprites/player.png')
end

function Player:update(dt)
    if love.keyboard.isDown('right') then
        self.x = self.x + self.velocity * dt
    end
    if love.keyboard.isDown('left') then
        self.x = self.x - self.velocity * dt
    end
end

function Player:draw()
    love.graphics.draw(self.sprite, self.x, self.y, nil, 5, 5)
end