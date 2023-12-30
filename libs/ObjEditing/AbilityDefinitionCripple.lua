---@class AbilityDefinitionCripple: AbilityDefinition
AbilityDefinitionCripple = {}
_G.AbilityDefinitionCripple = AbilityDefinitionCripple

---new
---@param id string
---@return AbilityDefinitionCripple
function AbilityDefinitionCripple:new(id) end

---setDamageReduction
---<**Cri3**>
---@param level integer
---@param value float
function AbilityDefinitionCripple:setDamageReduction(level, value) end

---setAttackSpeedReduction
---<**Cri2**>
---@param level integer
---@param value float
function AbilityDefinitionCripple:setAttackSpeedReduction(level, value) end

---setMovementSpeedReduction
---<**Cri1**>
---@param level integer
---@param value float
function AbilityDefinitionCripple:setMovementSpeedReduction(level, value) end
