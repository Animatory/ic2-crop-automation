local config = {
    -- NOTE: EACH CONFIG SHOULD END WITH A COMMA

    -- Side Length of Storage Farm
    storageFarmSize = 9,
    -- Side Length of Working Farm
    workingFarmSize = 6,

    -- Once complete, remove all extra crop sticks to prevent the working farm from weeding
    cleanUp = true,
    -- Utilize storage chest (Don't Change)
    keepDrops = true,
    -- Keep crops that are not the recognized target crop during autoSpread and autoStat
    keepMutations = false,
    -- Whether or not to stat-up crops during autoTier (Very Slow)
    statWhileTiering = false,

    -- Minimum tier for the working farm during autoTier
    autoTierThreshold = 13,
    -- Maximum Growth during autoTier
    autoTierMaxGrowth = 21,
    -- Maximum Resistance during autoTier
    autoTierMaxResistance = 2,

    -- Minimum Gr + Ga - Re for the working farm during autoStat (21 + 31 - 0 = 52)
    autoStatThreshold = 52,
    -- Maximum Growth during autoStat
    autoStatMaxGrowth = 21,
    -- Maximum Resistance during autoStat
    autoStatMaxResistance = 2,

    -- Minimum Gr + Ga - Re for the storage farm during autoSpread (23 + 31 - 0 = 54)
    autoSpreadThreshold = 50,
    -- Maximum Growth during autoSpread
    autoSpreadMaxGrowth = 23,
    -- Maximum Resistance during autoSpread
    autoSpreadMaxResistance = 2,

    -- Minimum Charge Level
    needChargeLevel = 0.2,
    -- Max breed round before termination of autoTier. Set to nil for infinite loop
    maxBreedRound = 1000,

    -- =========== DO NOT CHANGE ===========

    -- The coordinate for charger
    chargerPos = {0, 0},
    -- The coordinate for the container contains crop sticks
    stickContainerPos = {-1, 0},
    -- The coordinate for the container to store seeds, products, etc
    storagePos = {-2, 0},
    -- The coordinate for the farmland that the dislocator is facing
    relayFarmlandPos = {1, 1},
    -- The coordinate for the transvector dislocator
    dislocatorPos = {1, 2},

    -- The slot for spade
    spadeSlot = 0,
    -- The slot for the transvector binder
    binderSlot = -1,
    -- The slot for crop sticks
    stickSlot = -2,
    -- The slot which the robot will stop storing items
    storageStopSlot = -3
}

config.workingFarmArea = config.workingFarmSize^2
config.storageFarmArea = config.storageFarmSize^2

return config