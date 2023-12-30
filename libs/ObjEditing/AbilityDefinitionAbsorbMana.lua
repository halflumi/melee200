---@class AbilityDefinitionAbsorbMana: AbilityDefinition
AbilityDefinitionAbsorbMana = {}
_G.AbilityDefinitionAbsorbMana = AbilityDefinitionAbsorbMana

---new
---@param id string
---@return AbilityDefinitionAbsorbMana
function AbilityDefinitionAbsorbMana:new(id) end

---setMaximumManaAbsorbed
---<**abs2**>
---@param level integer
---@param value float
function AbilityDefinitionAbsorbMana:setMaximumManaAbsorbed(level, value) end

---setMaximumLifeAbsorbed
---<**abs1**>
---@param level integer
---@param value float
function AbilityDefinitionAbsorbMana:setMaximumLifeAbsorbed(level, value) end
