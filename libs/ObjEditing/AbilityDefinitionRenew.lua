---@class AbilityDefinitionRenew: AbilityDefinition
AbilityDefinitionRenew = {}
_G.AbilityDefinitionRenew = AbilityDefinitionRenew

---new
---@param id string
---@return AbilityDefinitionRenew
function AbilityDefinitionRenew:new(id) end

---setPowerbuildRate
---<**Rep4**>
---@param level integer
---@param value float
function AbilityDefinitionRenew:setPowerbuildRate(level, value) end

---setNavalRangeBonus
---<**Rep5**>
---@param level integer
---@param value float
function AbilityDefinitionRenew:setNavalRangeBonus(level, value) end

---setRepairTimeRatio
---<**Rep2**>
---@param level integer
---@param value float
function AbilityDefinitionRenew:setRepairTimeRatio(level, value) end

---setRepairCostRatio
---<**Rep1**>
---@param level integer
---@param value float
function AbilityDefinitionRenew:setRepairCostRatio(level, value) end

---setPowerbuildCost
---<**Rep3**>
---@param level integer
---@param value float
function AbilityDefinitionRenew:setPowerbuildCost(level, value) end
