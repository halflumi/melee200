---@class AbilityDefinitionRepairOrc: AbilityDefinition
AbilityDefinitionRepairOrc = {}
_G.AbilityDefinitionRepairOrc = AbilityDefinitionRepairOrc

---new
---@param id string
---@return AbilityDefinitionRepairOrc
function AbilityDefinitionRepairOrc:new(id) end

---setPowerbuildRate
---<**Rep4**>
---@param level integer
---@param value float
function AbilityDefinitionRepairOrc:setPowerbuildRate(level, value) end

---setNavalRangeBonus
---<**Rep5**>
---@param level integer
---@param value float
function AbilityDefinitionRepairOrc:setNavalRangeBonus(level, value) end

---setRepairTimeRatio
---<**Rep2**>
---@param level integer
---@param value float
function AbilityDefinitionRepairOrc:setRepairTimeRatio(level, value) end

---setRepairCostRatio
---<**Rep1**>
---@param level integer
---@param value float
function AbilityDefinitionRepairOrc:setRepairCostRatio(level, value) end

---setPowerbuildCost
---<**Rep3**>
---@param level integer
---@param value float
function AbilityDefinitionRepairOrc:setPowerbuildCost(level, value) end
