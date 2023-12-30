---@class AbilityDefinitionReplenishLife: AbilityDefinition
AbilityDefinitionReplenishLife = {}
_G.AbilityDefinitionReplenishLife = AbilityDefinitionReplenishLife

---new
---@param id string
---@return AbilityDefinitionReplenishLife
function AbilityDefinitionReplenishLife:new(id) end

---setMinimumLifeRequired
---<**Rpb3**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishLife:setMinimumLifeRequired(level, value) end

---setMaximumUnitsChargedToCaster
---<**Rpb5**>
---@param level integer
---@param value integer
function AbilityDefinitionReplenishLife:setMaximumUnitsChargedToCaster(level, value) end

---setMaximumUnitsAffected
---<**Rpb6**>
---@param level integer
---@param value integer
function AbilityDefinitionReplenishLife:setMaximumUnitsAffected(level, value) end

---setHitPointsGained
---<**Rej1**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishLife:setHitPointsGained(level, value) end
