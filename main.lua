
--[[
    Day 0
]]
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
function love.load()
    love.window.setMode(WINDOW_WIDTH,WINDOW_HEIGHT,{
        fullscreen = false,
        resizable = false,
        vsync = true --[[ Synced to User screen]]
    })
end



function love.draw()
    love.graphics.printf(
        "Hello World",
        0,
        WINDOW_HEIGHT/2 - 6, --[[ Default font is size 6, so adujust by 6 for perfect centering]]
        WINDOW_WIDTH,
        'center')
end






