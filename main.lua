-- Title: TouchAndDrag
-- Name: Ryoma Scott
-- Course: ICS2O/3C
-- This program displays images that can be dragged 
--around on the screen.

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--local variables.
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local girl1 = display.newImageRect("Images/girl1.png", 150, 150)
local octopus = display.newImageRect("Images/octopus.png", 150, 150)

--set width and height of the octopus
local octopusWidth = octopus.width
local octopusHeight = octopus.girl1Height

--my boolean variables keep track of which object I touched first
local alreadyTouchedGirl1 = false
local alreadyTouchedOctopus = false

--add sounds to when the objects are being dragged
local correctSound = audio.loadSound("Sounds/scream.mp3")
local correctSoundChannel

local correctSound = audio.loadSound("Sounds/girlScream.mp3")
local correctSoundChannel

--set the initial x and y position of myImage
girl1.x = 400
girl1.y = 350

octopus.x = 800
octopus.y = 350

--Function: OctopusListener
--Input: touch listener
--Output: none
--Description: When octopus is touched, move it
local function OctopusListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirl1 == false) then
			alreadyTouchedOctopus = true

correctSoundChannel = audio.play(correctSound)

		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedOctopus == true) ) then
		octopus.x = touch.x
		octopus.y = touch.y
	end

	if (touch.phase == "ended") then
	alreadyTouchedOctopus = false
	alreadyTouchedGirl1 = false
end
end


--add the respective listeners to each object
octopus:addEventListener("touch", OctopusListener)

--Function: Girl1Listener
--Input: touch listener
--Output: none
--Description: When girl1 is touched, move her
local function Girl1Listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedOctopus == false) then
			alreadyTouchedGirl1 = true

			correctSoundChannel = audio.play(correctSound)
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedGirl1 == true) ) then
		girl1.x = touch.x
		girl1.y = touch.y
	end

	if (touch.phase == "ended") then
	alreadyTouchedGirl1 = false
	alreadyTouchedOctopus = false
end
end


--add the respective listeners to each object
girl1:addEventListener("touch", Girl1Listener)




