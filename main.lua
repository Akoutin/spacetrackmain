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

-- include Corona's "widget" library
local widget = require "widget"
local composer = require "composer"
local json = require( "json" )




--[[
-- Data (string) to write
local saveData = "My app state data"

-- Path for the file to write
local path = system.pathForFile( "language-settings.txt", system.DocumentsDirectory )

-- Open the file handle
local file, errorString = io.open( path, "w" )

if not file then
    -- Error occurred; output the cause
    print( "File error: " .. errorString )
    composer.gotoScene( "menumain.settings.language-selection" )
else
    -- Read data from file
    local contents = file:read( "*a" )
    -- Output the file contents
    print( "Contents of " .. path .. "\n" .. contents )
    -- Close the file handle
    io.close( file )
end

file = nil
]]

local path = system.pathForFile( "language-settings.txt", system.DocumentsDirectory)
local file, errorString = io.open( path, "r" )
if not file then
    -- Error occurred; output the cause
    print( "File error: " .. errorString )
    composer.gotoScene( "menumain.settings.language-selection")
else
    -- Read data from file
    local contents = file:read( "*a" )
    -- Output the file contents
    print( "Contents of " .. path .. "\n" .. contents )
    -- Close the file handle
    io.close( file )
end

file = nil



-- Global Variables
gameLanguage = "english"
--events

-- composer.gotoScene( "menumain.character-screen.character-screen" )



