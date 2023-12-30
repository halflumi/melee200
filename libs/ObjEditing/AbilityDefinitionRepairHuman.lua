---@class AbilityDefinitionRepairHuman: AbilityDefinition
AbilityDefinitionRepairHuman = {}
_G.AbilityDefinitionRepairHuman = AbilityDefinitionRepairHuman

---new
---@param id string
---@return AbilityDefinitionRepairHuman
function AbilityDefinitionRepairHuman:new(id) end

---setPowerbuildRate
---<**Rep4**>
---@param level integer
---@param value float
function AbilityDefinitionRepairHuman:setPowerbuildRate(level, value) end

---setNavalRangeBonus
---<**Rep5**>
---@param level integer
---@param value float
function AbilityDefinitionRepairHuman:setNavalRangeBonus(level, value) end

---setRepairTimeRatio
---<**Rep2**>
---@param level integer
---@param value float
function AbilityDefinitionRepairHuman:setRepairTimeRatio(level, value) end

---setRepairCostRatio
---<**Rep1**>
---@param level integer
---@param value float
function AbilityDefinitionRepairHuman:setRepairCostRatio(level, value) end

---setPowerbuildCost
---<**Rep3**>
---@param level integer
---@param value float
function AbilityDefinitionRepairHuman:setPowerbuildCost(level, value) end
