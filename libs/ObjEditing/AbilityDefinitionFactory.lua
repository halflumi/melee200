---@class AbilityDefinitionFactory: AbilityDefinition
AbilityDefinitionFactory = {}
_G.AbilityDefinitionFactory = AbilityDefinitionFactory

---new
---@param id string
---@return AbilityDefinitionFactory
function AbilityDefinitionFactory:new(id) end

---setSpawnUnitID
---<**Nfyu**>
---@param level integer
---@param value string
function AbilityDefinitionFactory:setSpawnUnitID(level, value) end

---setLeashRange
---<**Nfy2**>
---@param level integer
---@param value float
function AbilityDefinitionFactory:setLeashRange(level, value) end

---setSpawnInterval
---<**Nfy1**>
---@param level integer
---@param value float
function AbilityDefinitionFactory:setSpawnInterval(level, value) end
