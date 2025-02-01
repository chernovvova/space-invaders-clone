baseWidth = 800
baseHeight = 600

scaleX, scaleY = 1, 1

function love.conf(t) 
    t.window.title = "Space invaders"   -- Заголовок окна (строка)
    t.window.icon = nil                 -- Путь до файла картинки, которая будет использоваться в качестве иконки окна (строка)
    t.window.width = baseWidth          -- Ширина окна (число)
    t.window.height = baseHeight        -- Высота окна (число)
    t.window.borderless = false         -- Убрать рамки у окна (логическое)
    t.window.resizable = true           -- Разрешить пользователю изменять размер окна (логическое)
    t.window.minwidth = 400             -- Минимально возможная ширина окна (число)
    t.window.minheight = 300            -- Минимально возможная высота окна (число)
    t.window.fullscreen = false         -- Включить полноэкранный режим (логическое)
    t.window.fullscreentype = "desktop" -- Выбор полноэкранного режима "desktop" или "exclusive" (строка)
    t.window.vsync = 1                  -- Использовать вертикальную синхронизацию (число)
    t.window.msaa = 0                   -- Степень мультисемплинга (число)
    t.window.display = 1                -- Номер монитора, на котором будет показано окно игры (число)
    t.window.highdpi = false            -- Включить режим высокой чёткости (логическое, только для Retina дисплеев)
    t.window.x = nil                    -- Расположение окна на дисплее по X, при значении nil - середина ширины дисплея (число)
    t.window.y = nil                    -- Расположение окна на дисплее по Y, при значении nil - середина высоты дисплея (число)
end