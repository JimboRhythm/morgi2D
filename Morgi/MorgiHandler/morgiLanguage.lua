-- MorgiHandler/morgiLanguage.lua

-- Define a custom Morgi-like function that renders text and handles JSON
    local morgiLanguage = {}

    function morgiLanguage.morgiPrint(content, x, y)
        if type(content) == "string" then
            love.graphics.print(content, x, y)
        elseif type(content) == "table" then
            -- Check if the content is a table (assumed to be JSON)
            local jsonData = table.concat(content, "\n")
            love.graphics.print(jsonData, x, y)
        else
            love.graphics.print("Invalid syntax does it use the morgi library?", x, y)
        end
    end
    
    return morgiLanguage
    