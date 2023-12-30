---@class AbilityDefinitionReplenishMana: AbilityDefinition
AbilityDefinitionReplenishMana = {}
_G.AbilityDefinitionReplenishMana = AbilityDefinitionReplenishMana

---new
---@param id string
---@return AbilityDefinitionReplenishMana
function AbilityDefinitionReplenishMana:new(id) end

---setMinimumManaRequired
---<**Rpb4**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishMana:setMinimumManaRequired(level, value) end

---setMaximumUnitsChargedToCaster
---<**Rpb5**>
---@param level integer
---@param value integer
function AbilityDefinitionReplenishMana:setMaximumUnitsChargedToCaster(level, value) end

---setManaPointsGained
---<**Rej2**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishMana:setManaPointsGained(level, value) end

---setMaximumUnitsAffected
---<**Rpb6**>
---@param level integer
---@param value integer
function AbilityDefinitionReplenishMana:setMaximumUnitsAffected(level, value) end
