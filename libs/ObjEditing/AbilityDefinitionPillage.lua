---@class AbilityDefinitionPillage: AbilityDefinition
AbilityDefinitionPillage = {}
_G.AbilityDefinitionPillage = AbilityDefinitionPillage

---new
---@param id string
---@return AbilityDefinitionPillage
function AbilityDefinitionPillage:new(id) end

---setAccumulationStep
---<**Sal2**>
---@param level integer
---@param value integer
function AbilityDefinitionPillage:setAccumulationStep(level, value) end

---setSalvageCostRatio
---<**Sal1**>
---@param level integer
---@param value float
function AbilityDefinitionPillage:setSalvageCostRatio(level, value) end
