MenuState = {}

function MenuState:enter(previous)
end

function MenuState:update(dt)

end

function MenuState:draw()
    drawCenteredText('Press enter to start')
end

function MenuState:keyreleased(key)
    if Gamestate.current() == MenuState and key == 'return' then
        Gamestate.switch(GameState)
    end
end

