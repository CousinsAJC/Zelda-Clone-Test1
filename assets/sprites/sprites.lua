-- New table to hold all sprites.
-- Going to test nested tables to hold images in a structured way.

sprites = {
    player1 = love.graphics.newImage("assets/sprites/square-girl.png"),
    player2 = {},
    enemy = {},
    tile = {},
    background = {},
    weapon = {},
    armor = {}
}

sprites.player1:setFilter("nearest")