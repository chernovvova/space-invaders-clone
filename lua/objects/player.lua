Player = GameObject:extend()

function Player:new(game, x, y)
    Player.super.new(self, x, y)

    self.width = 32
    self.height = 32
    self.spriteScaleX = 5
    self.spriteScaleY = 5

    local body = love.physics.newBody(
        game.world, 
        self.x, 
        self.y, 
        'dynamic'
    )
    local shape = love.physics.newRectangleShape(
        self.x + self.width * self.spriteScaleX / 4, 
        self.y + self.height * self.spriteScaleY / 4, 
        self.width * self.spriteScaleX / 2, 
        self.height * self.spriteScaleY / 2
    )
    self.fixture = love.physics.newFixture(body, shape)

    self.velocity = 200
    self.sprite = love.graphics.newImage('assets/sprites/player.png')
end

function Player:update(dt)
    if love.keyboard.isDown('right') then
        self.fixture:getBody():setLinearVelocity(self.velocity, 0)
    elseif love.keyboard.isDown('left') then
        self.fixture:getBody():setLinearVelocity(-self.velocity, 0)
    else
        self.fixture:getBody():setLinearVelocity(0, 0)
    end
end

function Player:draw()
    love.graphics.draw(
        self.sprite, 
        self.fixture:getBody():getX(),
        self.fixture:getBody():getY(),
        nil,
        self.spriteScaleX,
        self.spriteScaleY
    )
    love.graphics.rectangle(
        'line', 
        self.fixture:getBody():getX() + self.width * self.spriteScaleX / 4,
        self.fixture:getBody():getY() + self.height * self.spriteScaleY / 4, 
        self.width * self.spriteScaleX / 2, 
        self.height * self.spriteScaleY / 2
    )
end