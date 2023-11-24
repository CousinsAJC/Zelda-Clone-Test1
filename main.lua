function love.load()
    require "requires"
    playerLoad()
end

function love.update(dt)
    playerUpdate(dt)
end

function love.draw()
    startScreenPrint()
    playerDraw()
end
