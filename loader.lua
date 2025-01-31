function loadFiles()
    require 'lua/utils'
    require 'lua/game_object'
end

function loadLibraries()
    Object = require './lua/libraries/classic/classic'
end

function loadObjects()
    objects = {}
    getFolderFilesRecursively('lua/objects', objects)
    requireFiles(objects)
end

function loadGame()
    loadLibraries()
    loadFiles()
    loadObjects()
end