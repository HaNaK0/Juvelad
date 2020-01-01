loader = require("juvelad.load")
game = require("juvelad.game")

function love.load(args)
	local sprites = loader.LoadSprites()

	game:SetSpritesAndOrigin(sprites.gems, sprites.cursor, 5, 5)
	game:StartLevel(loader.LoadPlayingfield(5, 5, table.getn(sprites.gems)))
end

function love.update(deltaTime)

end

function love.draw()
	game:Draw()
end
