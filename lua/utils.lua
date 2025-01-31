function getFolderFilesRecursively(folder, files)
    local folderItems = love.filesystem.getDirectoryItems(folder)
    for _, item in ipairs(folderItems) do
        local fileName = folder .. '/' .. item
        local fileType = love.filesystem.getInfo(fileName).type 
        if fileType == 'file' then
            table.insert(files, fileName)
        elseif fileType == 'directory' then
            getFolderFilesRecursively(fileName, files)
        end
    end
end

function requireFiles(files)
    for _, file in ipairs(files) do
        local file = file:sub(1, -5)
        require(file)
    end
end
