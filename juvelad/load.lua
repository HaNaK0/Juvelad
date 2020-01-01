local Sp1 = {}

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

function Sp1.LoadSprites()
	local sprites = {}

	sprites.gems = LoadSpriteList(
		{"Sprites/png/element_blue_diamond_glossy.png", 
		"Sprites/png/element_green_diamond_glossy.png", 
		"Sprites/png/element_grey_diamond_glossy.png",
		"Sprites/png/element_purple_diamond_glossy.png",
		"Sprites/png/element_red_diamond_glossy.png",
		"Sprites/png/element_yellow_diamond_glossy.png"
	})

	sprites.cursor = LoadSpriteList({"Sprites/png/selectorA.png", "Sprites/png/selectorB.png"})

	return sprites
end

function Sp1.LoadPlayingfield(sizeX, sizeY, numberOftypes)
	local playingfield = {width = sizeX, height = sizeY}

	for i = 1, playingfield.width * playingfield.height do
		playingfield[i] = math.random(numberOftypes)
	end

	return playingfield
end

return Sp1