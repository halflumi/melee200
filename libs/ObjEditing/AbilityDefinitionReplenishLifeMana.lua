---@class AbilityDefinitionReplenishLifeMana: AbilityDefinition
AbilityDefinitionReplenishLifeMana = {}
_G.AbilityDefinitionReplenishLifeMana = AbilityDefinitionReplenishLifeMana

---new
---@param id string
---@return AbilityDefinitionReplenishLifeMana
function AbilityDefinitionReplenishLifeMana:new(id) end

---setMinimumManaRequired
---<**Rpb4**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishLifeMana:setMinimumManaRequired(level, value) end

---setMaximumUnitsChargedToCaster
---<**Rpb5**>
---@param level integer
---@param value integer
function AbilityDefinitionReplenishLifeMana:setMaximumUnitsChargedToCaster(level, value) end

---setMinimumLifeRequired
---<**Rpb3**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishLifeMana:setMinimumLifeRequired(level, value) end

---setManaPointsGained
---<**Rej2**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishLifeMana:setManaPointsGained(level, value) end

---setMaximumUnitsAffected
---<**Rpb6**>
---@param level integer
---@param value integer
function AbilityDefinitionReplenishLifeMana:setMaximumUnitsAffected(level, value) end

---setHitPointsGained
---<**Rej1**>
---@param level integer
---@param value float
function AbilityDefinitionReplenishLifeMana:setHitPointsGained(level, value) end
