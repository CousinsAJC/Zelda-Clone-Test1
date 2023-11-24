function playerLoad()
    p1 = {
        x = 400,
        y = 400,
        scaleX = 2,
        scaleY = 2,
        speed = 200,
        triggerblink = math.random(7, 20) * 60,
        blinking = false,
        blinkTimer = 0
    }


    p1.spriteSheet = love.graphics.newImage("assets/sprites/square-full-girl-blink.png")
    p1.spriteSheet:setFilter("nearest")
    p1.grid = anim8.newGrid(48,48,336,48)

    p1.animations = {}
    p1.animations.idle = anim8.newAnimation(p1.grid("1-1", 1), 1)
    p1.animations.blink = anim8.newAnimation(p1.grid("1-7", 1), 0.05)
    --self.animations.down = anim8.newAnimation(self.grid("1-4", 1), 0.2)
    --self.animations.left = anim8.newAnimation(self.grid("1-4", 2), 0.2)
    --self.animations.right = anim8.newAnimation(self.grid("1-4", 3), 0.2)
    --self.animations.up = anim8.newAnimation(self.grid("1-4", 4), 0.2)

    p1.anim = p1.animations.idle

end

function playerUpdate(dt)
    playerInput(dt)
    p1.anim:update(dt)
end


function playerDraw()
    --love.graphics.draw(sprites.p1, p1.x, p1.y, 0, p1.scaleX, p1.scaleY, p1.originX, p1.originY)
    p1.anim:draw(p1.spriteSheet, p1.x, p1.y, nil, p1.scaleX, p1.scaleY)
end


function playerInput(dt)
    p1.pace = p1.speed * dt

    if (love.keyboard.isDown("a") or love.keyboard.isDown("d")) and (love.keyboard.isDown("w") or love.keyboard.isDown("s")) then
        p1.pace = p1.pace * 0.85
    end

    if love.keyboard.isDown("a") then
        p1.x = p1.x - p1.pace
        --p1.isMoving = true
    end

    if love.keyboard.isDown("d") then
        p1.x = p1.x + p1.pace
        --p1.isMoving = true
    end

    if love.keyboard.isDown("w") then
        p1.y = p1.y - p1.pace
        --p1.isMoving = true
    end

    if love.keyboard.isDown("s") then
        p1.y = p1.y + p1.pace
        --p1.isMoving = true
    end
end


--[[
anyDown = love.keyboard.isDown("d", "s", "a", "w")

if anyDown == false then
    p1.isMoving = false
elseif anyDown == true then
    p1.isMoving = true
end



if p1.triggerblink <= 0 then
    triggerblink = math.random(7, 20) * 60
    p1.blinking = true
    blinkTimer = 6
end


if p1.isMoving == false and p1.blinking == false then
    p1.anim = p1.animations.idle
    p1.triggerblink = p1.triggerblink - 1
elseif p1.isMoving == false and p1.blinking == true then
    p1.anim = p1.animations.blink
    blinkTimer = blinkTimer - 1
    if blinkTimer <= 0 then
        p1.blinking = false
    end
end
]]