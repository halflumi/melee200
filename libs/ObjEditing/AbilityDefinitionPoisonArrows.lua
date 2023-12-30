---@class AbilityDefinitionPoisonArrows: AbilityDefinition
AbilityDefinitionPoisonArrows = {}
_G.AbilityDefinitionPoisonArrows = AbilityDefinitionPoisonArrows

---new
---@param id string
---@return AbilityDefinitionPoisonArrows
function AbilityDefinitionPoisonArrows:new(id) end

---setAttackSpeedFactor
---<**Poa3**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonArrows:setAttackSpeedFactor(level, value) end

---setStackingType
---<**Poa5**>
---@param level integer
---@param value integer
function AbilityDefinitionPoisonArrows:setStackingType(level, value) end

---setExtraDamage
---<**Poa1**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonArrows:setExtraDamage(level, value) end

---setMovementSpeedFactor
---<**Poa4**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonArrows:setMovementSpeedFactor(level, value) end

---setDamageperSecond
---<**Poa2**>
---@param level integer
---@param value float
function AbilityDefinitionPoisonArrows:setDamageperSecond(level, value) end
