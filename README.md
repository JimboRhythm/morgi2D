some tutorials and thing

how to make text using morgi language

-- mainCode/PlayingState.lua

-- Load the Morgi-like module from the MorgiHandler folder
local morgiLanguage = require("MorgiHandler.morgiLanguage")
local assets = require("MorgiHandler.assets")

function love.load()
    local imagePath = assets.image .. "a.png" -- you dont need to make a a.png image btw
end

function love.update(dt)
    -- Update game logic here
end

function love.draw()
    -- Use the custom Morgi-like function to render text
    morgiLanguage.morgiPrint("Hello World!", 400, 300)

    -- Use the custom Morgi-like function to render JSON data
    local jsonData = {
        key1 = "value1",
        key2 = "value2"
    }
    morgiLanguage.morgiPrint(jsonData, 100, 100)

    -- Additional game logic for your playing state
end

how to add an image using morgi language

-- mainCode/PlayingState.lua

local morgiLanguage = require("MorgiHandler.morgiLanguage")

-- Define the image path and position
local imagePath = "assets/images/my_image.png"
local x, y = 100, 100

function love.load()
    -- Load the image using the Morgi-like function
    morgiLanguage.morgiImage(imagePath, x, y)
end

function love.update(dt)
    -- Update game logic here
end

function love.draw()
    -- Clear the screen with a white background
    love.graphics.clear(255, 255, 255)

    -- Display the image
    morgiLanguage.morgiImage(imagePath, x, y)

    -- Additional drawing or game logic for your PlayingState
end
