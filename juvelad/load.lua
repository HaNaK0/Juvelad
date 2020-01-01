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
		"Sprites/png/element_green_diamond_glossy.png", 
		"Sprites/png/element_grey_diamond_glossy.png",
		"Sprites/png/element_purple_diamond_glossy.png",
		"Sprites/png/element_red_diamond_glossy.png",
		"Sprites/png/element_yellow_diamond_glossy.png"
	})

	sprites.slector = LoadSpriteList({"Sprites/png/selectorA.png", "Sprites/png/selectorB.png"})

	return sprites
end

function Sp1.LoadPlayingfield(sizeX, sizeY, numberOftypes, cellSize)
	local playingfield = {size = {x = size, y = sizeY}, }

	for i = 1, playingfield.size.x * playingfield.size.y do
		playingfield[i] = math.random(numberOftypes)
	end
end

return Sp1