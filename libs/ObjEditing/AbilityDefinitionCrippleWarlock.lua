---@class AbilityDefinitionCrippleWarlock: AbilityDefinition
AbilityDefinitionCrippleWarlock = {}
_G.AbilityDefinitionCrippleWarlock = AbilityDefinitionCrippleWarlock

---new
---@param id string
---@return AbilityDefinitionCrippleWarlock
function AbilityDefinitionCrippleWarlock:new(id) end

---setDamageReduction
---<**Cri3**>
---@param level integer
---@param value float
function AbilityDefinitionCrippleWarlock:setDamageReduction(level, value) end

---setAttackSpeedReduction
---<**Cri2**>
---@param level integer
---@param value float
function AbilityDefinitionCrippleWarlock:setAttackSpeedReduction(level, value) end

---setMovementSpeedReduction
---<**Cri1**>
---@param level integer
---@param value float
function AbilityDefinitionCrippleWarlock:setMovementSpeedReduction(level, value) end
