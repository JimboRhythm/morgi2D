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
