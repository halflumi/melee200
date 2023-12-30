---@class AbilityDefinitionSlowPoison: AbilityDefinition
AbilityDefinitionSlowPoison = {}
_G.AbilityDefinitionSlowPoison = AbilityDefinitionSlowPoison

---new
---@param id string
---@return AbilityDefinitionSlowPoison
function AbilityDefinitionSlowPoison:new(id) end

---setDamagePerSecond
---<**Spo1**>
---@param level integer
---@param value float
function AbilityDefinitionSlowPoison:setDamagePerSecond(level, value) end

---setStackingType
---<**Spo4**>
---@param level integer
---@param value integer
function AbilityDefinitionSlowPoison:setStackingType(level, value) end

---setAttackSpeedFactor
---<**Spo3**>
---@param level integer
---@param value float
function AbilityDefinitionSlowPoison:setAttackSpeedFactor(level, value) end

---setMovementSpeedFactor
---<**Spo2**>
---@param level integer
---@param value float
function AbilityDefinitionSlowPoison:setMovementSpeedFactor(level, value) end
