-- Define the initial state as the menu
local currentState = "menu"

function love.load()
    -- Load any assets or initialize variables here
end

function love.update(dt)
    -- Update game logic here based on the current state
end

function love.draw()
    -- Draw the appropriate elements based on the current state
    if currentState == "menu" then
        -- Draw the menu UI here
        love.graphics.print("Menu", 300, 200)
        love.graphics.rectangle("line", 300, 250, 100, 50)
        love.graphics.print("Play", 320, 265)
    elseif currentState == "playing" then
        -- You can load and run the PlayingState.lua here
        local success, error_message = love.filesystem.load("mainCode/PlayingState.lua")
        if success then
            success() -- Run the loaded Lua file
        else
            print("Error loading PlayingState.lua: " .. error_message)
        end
    end
end

function love.mousepressed(x, y, button)
    if currentState == "menu" then
        -- Check if the "Play" button is clicked
        if x >= 300 and x <= 400 and y >= 250 and y <= 300 then
            currentState = "playing" -- Switch to the playing state
        end
    end
end
