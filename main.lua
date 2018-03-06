-- Title: TouchAndDrag
-- Name: Ryoma Scott
-- Course: ICS2O/3C
-- This program displays images that can be dragged 
--around on the screen.

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--local variables.
local backgroundImage = display.newImageRect("Image/background.png", 2048, 1536)
local girl1 = display.newImageRect("Image/girl1.png", 150, 150)
local girl1Width = girl1.width
local girl1Height = girl1.girl1Height

local octopus = display.newImageRect("Images/octopus.png", 150, 150)
local octopusWidth = octopus.width
local octopusHeight = octopus.girl1Height

--my boolean variables keep track of which object I touched first
local alreadyTouchedGirl1 = false
local alreadyTouchedOctopus = false

--set the initial x and y position of myImage
girl1.x = 400
girl1.y = 500

octopus.x = 300
octopus.y = 200