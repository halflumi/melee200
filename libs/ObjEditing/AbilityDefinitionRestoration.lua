---@class AbilityDefinitionRestoration: AbilityDefinition
AbilityDefinitionRestoration = {}
_G.AbilityDefinitionRestoration = AbilityDefinitionRestoration

---new
---@param id string
---@return AbilityDefinitionRestoration
function AbilityDefinitionRestoration:new(id) end

---setPowerbuildRate
---<**Rep4**>
---@param level integer
---@param value float
function AbilityDefinitionRestoration:setPowerbuildRate(level, value) end

---setNavalRangeBonus
---<**Rep5**>
---@param level integer
---@param value float
function AbilityDefinitionRestoration:setNavalRangeBonus(level, value) end

---setRepairTimeRatio
---<**Rep2**>
---@param level integer
---@param value float
function AbilityDefinitionRestoration:setRepairTimeRatio(level, value) end

---setRepairCostRatio
---<**Rep1**>
---@param level integer
---@param value float
function AbilityDefinitionRestoration:setRepairCostRatio(level, value) end

---setPowerbuildCost
---<**Rep3**>
---@param level integer
---@param value float
function AbilityDefinitionRestoration:setPowerbuildCost(level, value) end
