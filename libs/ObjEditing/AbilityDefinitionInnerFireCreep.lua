---@class AbilityDefinitionInnerFireCreep: AbilityDefinition
AbilityDefinitionInnerFireCreep = {}
_G.AbilityDefinitionInnerFireCreep = AbilityDefinitionInnerFireCreep

---new
---@param id string
---@return AbilityDefinitionInnerFireCreep
function AbilityDefinitionInnerFireCreep:new(id) end

---setAutocastRange
---<**Inf3**>
---@param level integer
---@param value float
function AbilityDefinitionInnerFireCreep:setAutocastRange(level, value) end

---setLifeRegenRate
---<**Inf4**>
---@param level integer
---@param value float
function AbilityDefinitionInnerFireCreep:setLifeRegenRate(level, value) end

---setDefenseIncrease
---<**Inf2**>
---@param level integer
---@param value integer
function AbilityDefinitionInnerFireCreep:setDefenseIncrease(level, value) end

---setDamageIncrease
---<**Inf1**>
---@param level integer
---@param value float
function AbilityDefinitionInnerFireCreep:setDamageIncrease(level, value) end
