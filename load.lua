Sp1 = {}

function Sp1.LoadSprites()
    Sp1.sprites = {}

    Sp1.sprites.Square = love.graphics.newImage("Sprites/Square.png")
end

function Sp1.GameSetup(sizeX, sizeY)
    Sp1.game = {}
    local game = Sp1.game

    game.size = {x = sizeX, y = sizeY}
    
end