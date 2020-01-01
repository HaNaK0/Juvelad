local jGame = {
	score = 0,
	playingfield = nil,
	gemSprites = nil,
	cursorSprites = nil,
	spriteSize = {width = 0, height = 0},
	cursor = {x = 0, y = 0},
	origin = {x = 0, y = 0},
}

function jGame:SetSpritesAndOrigin(someGemSprites, someCursorSprites, originX, originY)
	self.gemSprites = someGemSprites
	self.cursorSprites = someCursorSprites

	self.origin.x = originX
	self.origin.y = originY

	self.spriteSize.width , self.spriteSize.height = someGemSprites[0]:getDimensions()
end

function jGame:StartLevel(aPlayingField)
	self.playingfield = aPlayingField
end

function jGame:Draw()
	if self.playingfield == nil then
		love.graphics.print("No playingfield", self.origin.x, self.origin.y)
		return
	end

	assert(self.gemSprites, "no gem sprites")
	assert(self.cursorSprites, "no cursor sprites")

	
end

return jGame