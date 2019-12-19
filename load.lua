local Sp1 = {}

function Sp1.LoadSprites()
	local function LoadSpriteList(tableOfPaths)
		local sprites = {}
		local spriteNames = {}

		sprites.names = spriteNames

		for i,v in ipairs(tableOfPaths)
		do
			sprites[i] = love.graphics.newImage(v)
			spriteNames[i] = v:match("^.+/(.+)$")
		end

		return sprites
	end

	local sprites = {}

	sprites.gems = LoadSpriteList(
		{"Sprites/png/element_blue_diamond_glossy.png", 
		"Sprites/png/element_green_polygon_glossy.png", 
		"Sprites/png/element_grey_square_glossy.png",
		"Sprites/png/element_purple_diamond_glossy.png",
		"Sprites/png/element_red_polygon_glossy.png",
		"Sprites/png/element_yellow_square_glossy.png"
	})

	sprites.slector = LoadSpriteList({"Sprites/png/selectorA.png", "Sprites/png/selectorB.png"})

	return sprites
end

function Sp1.GameSetup(sizeX, sizeY)
	Sp1.game = {}
	local game = Sp1.game

	game.size = {x = sizeX, y = sizeY}
end

return Sp1