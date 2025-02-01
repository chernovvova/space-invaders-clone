PauseState = Object:extend()

function PauseState:draw()
	drawCenteredText('PAUSE')
end

function PauseState:keyreleased(key)
	if Gamestate.current() == PauseState then
		Gamestate.pop()
	end
end



