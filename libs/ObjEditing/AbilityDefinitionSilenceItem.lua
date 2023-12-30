---@class AbilityDefinitionSilenceItem: AbilityDefinition
AbilityDefinitionSilenceItem = {}
_G.AbilityDefinitionSilenceItem = AbilityDefinitionSilenceItem

---new
---@param id string
---@return AbilityDefinitionSilenceItem
function AbilityDefinitionSilenceItem:new(id) end

---setAttackSpeedModifier
---<**Nsi4**>
---@param level integer
---@param value float
function AbilityDefinitionSilenceItem:setAttackSpeedModifier(level, value) end

---setMovementSpeedModifier
---<**Nsi3**>
---@param level integer
---@param value float
function AbilityDefinitionSilenceItem:setMovementSpeedModifier(level, value) end

---setChanceToMiss
---<**Nsi2**>
---@param level integer
---@param value float
function AbilityDefinitionSilenceItem:setChanceToMiss(level, value) end

---setAttacksPrevented
---<**Nsi1**>
---@param level integer
---@param value integer
function AbilityDefinitionSilenceItem:setAttacksPrevented(level, value) end
