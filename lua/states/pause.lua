PauseState = Object:extend()

function PauseState:enter(previous)
	self.previousState = previous
end

function PauseState:update(dt)

end

function PauseState:draw()
	self.previousState:draw()
	drawCenteredText('PAUSE')
end

function PauseState:keyreleased(key)
	if Gamestate.current() == PauseState and key == 'escape' then
		Gamestate.pop()
	end
end



