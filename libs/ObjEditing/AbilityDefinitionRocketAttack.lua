---@class AbilityDefinitionRocketAttack: AbilityDefinition
AbilityDefinitionRocketAttack = {}
_G.AbilityDefinitionRocketAttack = AbilityDefinitionRocketAttack

---new
---@param id string
---@return AbilityDefinitionRocketAttack
function AbilityDefinitionRocketAttack:new(id) end

---setMaximumNumberofTargets
---<**Efk3**>
---@param level integer
---@param value integer
function AbilityDefinitionRocketAttack:setMaximumNumberofTargets(level, value) end

---setDamagePerTarget
---<**Efk1**>
---@param level integer
---@param value float
function AbilityDefinitionRocketAttack:setDamagePerTarget(level, value) end

---setMaximumTotalDamage
---<**Efk2**>
---@param level integer
---@param value float
function AbilityDefinitionRocketAttack:setMaximumTotalDamage(level, value) end
