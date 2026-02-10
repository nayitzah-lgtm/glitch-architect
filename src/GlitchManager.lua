-- Module for managing global glitches

local GlitchManager = {}

function GlitchManager:new()
    local newObj = {}
    self.__index = self
    return setmetatable(newObj, self)
end

-- Add methods for managing glitches here

return GlitchManager