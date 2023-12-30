---@class AbilityDefinitionUnsummon: AbilityDefinition
AbilityDefinitionUnsummon = {}
_G.AbilityDefinitionUnsummon = AbilityDefinitionUnsummon

---new
---@param id string
---@return AbilityDefinitionUnsummon
function AbilityDefinitionUnsummon:new(id) end

---setAccumulationStep
---<**Sal2**>
---@param level integer
---@param value integer
function AbilityDefinitionUnsummon:setAccumulationStep(level, value) end

---setSalvageCostRatio
---<**Sal1**>
---@param level integer
---@param value float
function AbilityDefinitionUnsummon:setSalvageCostRatio(level, value) end
