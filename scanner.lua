local component = require('component')
local sides = require('sides')
local nbt = require('nbt')

local function scan()
    local rawResult = component.geolyzer.analyze(sides.down)

    -- AIR
    if rawResult.name == 'minecraft:air' or rawResult.name == 'GalacticraftCore:tile.brightAir' then
        return { isCrop = true, name = 'air' }

    elseif rawResult.name == 'IC2:blockCrop' then

        -- EMPTY CROP STICK
        if rawResult['crop:name'] == nil then
            return { isCrop = true, name = 'emptyCrop' }

            -- FILLED CROP STICK
        else
            return {
                isCrop = true,
                name = rawResult['crop:name'],
                gr = rawResult['crop:growth'],
                ga = rawResult['crop:gain'],
                re = rawResult['crop:resistance'],
                tier = rawResult['crop:tier']
            }
        end

        -- RANDOM BLOCK
    else
        return { isCrop = false, name = 'block' }
    end
end

return {
    scan = scn
}