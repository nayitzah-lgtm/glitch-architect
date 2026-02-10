local GlitchManager = {}
GlitchManager.activeGlitches = {}

local function applyNoFriction()
    -- Logic to apply no friction glitch
end

local function removeNoFriction()
    -- Logic to remove no friction glitch
end

local function applyNegativeGravity()
    -- Logic to apply negative gravity glitch
end

local function removeNegativeGravity()
    -- Logic to remove negative gravity glitch
end

local function applyEverythingIsSpring()
    -- Logic to apply everything is spring glitch
end

local function removeEverythingIsSpring()
    -- Logic to remove everything is spring glitch
end

local function applyPartGrowth()
    -- Logic to apply part growth glitch
end

local function removePartGrowth()
    -- Logic to remove part growth glitch
end

function GlitchManager.applyGlitch(glitchType)
    if glitchType == "NoFriction" then
        applyNoFriction()
    elseif glitchType == "NegativeGravity" then
        applyNegativeGravity()
    elseif glitchType == "EverythingIsSpring" then
        applyEverythingIsSpring()
    elseif glitchType == "PartGrowth" then
        applyPartGrowth()
    end
    GlitchManager.activeGlitches[glitchType] = true
end

function GlitchManager.removeGlitch(glitchType)
    if glitchType == "NoFriction" then
        removeNoFriction()
    elseif glitchType == "NegativeGravity" then
        removeNegativeGravity()
    elseif glitchType == "EverythingIsSpring" then
        removeEverythingIsSpring()
    elseif glitchType == "PartGrowth" then
        removePartGrowth()
    end
    GlitchManager.activeGlitches[glitchType] = nil
end

local function updateGlitches()
    for glitchType, _ in pairs(GlitchManager.activeGlitches) do
        -- Logic to update each active glitch
    end
end

-- Update every 30 seconds
local function startTimer()
    while true do
        updateGlitches()
        wait(30) -- Assuming there's a wait function that pauses execution
    end
end

-- Start the timer in a separate thread or coroutine
startTimer()

return GlitchManager
