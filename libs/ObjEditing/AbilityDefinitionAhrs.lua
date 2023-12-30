---@class AbilityDefinitionAhrs: AbilityDefinition
AbilityDefinitionAhrs = {}
_G.AbilityDefinitionAhrs = AbilityDefinitionAhrs

---new
---@param id string
---@return AbilityDefinitionAhrs
function AbilityDefinitionAhrs:new(id) end

---setTerrainDeformationAmplitude
---<**Wrs2**>
---@param level integer
---@param value float
function AbilityDefinitionAhrs:setTerrainDeformationAmplitude(level, value) end

---setTerrainDeformationDurationms
---<**Wrs3**>
---@param level integer
---@param value integer
function AbilityDefinitionAhrs:setTerrainDeformationDurationms(level, value) end

---setDamage
---<**Wrs1**>
---@param level integer
---@param value float
function AbilityDefinitionAhrs:setDamage(level, value) end
