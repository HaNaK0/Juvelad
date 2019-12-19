Game = require("load")

function love.load(args)
	Game.sprites = Game.LoadSprites()
	number = 0;
	timer = 0;
end

function love.update(deltaTime)
	timer = timer + deltaTime;
	if timer > 1 then
		number = (number + 1) % table.getn(Game.sprites.gems)
		timer = 0
	end
end

function love.draw()
	love.graphics.draw(Game.sprites.gems[number + 1], 10, 10)
end
