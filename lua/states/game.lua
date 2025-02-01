GameState = Object:extend()

function GameState:init()
    self.player = Player(love.graphics.getWidth() / 2 - 64, love.graphics.getHeight() / 2 - 64)
    print(self.palyer)
end

function GameState:update(dt)
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