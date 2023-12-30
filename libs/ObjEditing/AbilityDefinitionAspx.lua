---@class AbilityDefinitionAspx: AbilityDefinition
AbilityDefinitionAspx = {}
_G.AbilityDefinitionAspx = AbilityDefinitionAspx

---new
---@param id string
---@return AbilityDefinitionAspx
function AbilityDefinitionAspx:new(id) end

---setNormalFormUnit
---<**Eme1**>
---@param level integer
---@param value string
function AbilityDefinitionAspx:setNormalFormUnit(level, value) end

---setLandingDelayTime
---<**Eme4**>
---@param level integer
---@param value float
function AbilityDefinitionAspx:setLandingDelayTime(level, value) end

---setAltitudeAdjustmentDuration
---<**Eme3**>
---@param level integer
---@param value float
function AbilityDefinitionAspx:setAltitudeAdjustmentDuration(level, value) end

---setMorphingFlags
---<**Eme2**>
---@param level integer
---@param value integer
function AbilityDefinitionAspx:setMorphingFlags(level, value) end

---setAlternateFormUnit
---<**Emeu**>
---@param level integer
---@param value string
function AbilityDefinitionAspx:setAlternateFormUnit(level, value) end
