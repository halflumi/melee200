---@class AbilityDefinitionPoisonAttack: AbilityDefinition
AbilityDefinitionPoisonAttack = {}
_G.AbilityDefinitionPoisonAttack = AbilityDefinitionPoisonAttack

---new
---@param id string
---@return AbilityDefinitionPoisonAttack
function AbilityDefinitionPoisonAttack:new(id) end

---setAttackSpeedFactor
---<**Poi2**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonAttack:setAttackSpeedFactor(level, value) end

---setStackingType
---<**Poi4**>
---@param level integer
---@param value integer
function AbilityDefinitionPoisonAttack:setStackingType(level, value) end

---setDamageperSecond
---<**Poi1**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonAttack:setDamageperSecond(level, value) end

---setMovementSpeedFactor
---<**Poi3**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonAttack:setMovementSpeedFactor(level, value) end
