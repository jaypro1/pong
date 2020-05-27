
--[[
    Day 1
]]
push = require "push"
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243
function love.load()
    love.graphics.setDefaultFilter('nearest','nearest')
    push:setupScreen(VIRTUAL_WIDTH,VIRTUAL_HEIGHT,WINDOW_WIDTH,WINDOW_HEIGHT,{
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function love.draw()
    push:apply('start')
    love.graphics.printf(
        "Hello World",
        0,
        VIRTUAL_HEIGHT/2 - 6, --[[ Default font is size 6, so adujust by 6 for perfect centering]]
        VIRTUAL_WIDTH,
        'center')
    push:apply('end')
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end




