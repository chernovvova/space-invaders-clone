function loadFiles()
    require 'lua/utils'
    require 'lua/game_object'
end

function loadLibraries()
    Object = require 'lua/libraries/classic/classic'
    Timer = require 'lua/libraries/hump/timer'
    Gamestate = require 'lua/libraries/hump/gamestate'
end

function loadObjects()
    local objects = {}
    getFolderFilesRecursively('lua/objects', objects)
    requireFiles(objects)
end

function loadGameStates()
    require 'lua/states/pause'
    require 'lua/states/game'
    require 'lua/states/menu'
end

function loadGame()
    loadLibraries()
    loadFiles()
    loadObjects()
    loadGameStates()
end