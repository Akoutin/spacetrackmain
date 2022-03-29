-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


--[[

-- create background image
background = display.newImageRect( sceneGroup, "space.jpg", display.contentWidth, display.contentHeight )
background.anchorX = 0
background.anchorY = 0
background.x, background.y = 0, 0
background.alpha = 0.5

-- create overlay
local overlay = display.newImageRect( sceneGroup, "pagebg1.png", display.contentWidth, display.contentHeight )
overlay.anchorX = 0
overlay.anchorY = 0
overlay.x, overlay.y = 0, 0
	]]
