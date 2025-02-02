GameState = Object:extend()

function GameState:init()
    self.world = love.physics.newWorld(0, 0, true)
    self.player = Player(
        self, 
        love.graphics.getWidth() / 2 - 64, 
        love.graphics.getHeight() / 2 - 64
    )
end

function GameState:update(dt)
    if self.world then
        self.world:update(dt)
    end
    if self.player then
        self.player:update(dt)
    end
end

function GameState:draw()
    if self.player then
        self.player:draw()
    end
end

function GameState:keyreleased(key)
    if Gamestate.current() == GameState and key == 'escape' then
        Gamestate.push(PauseState)
    end
end