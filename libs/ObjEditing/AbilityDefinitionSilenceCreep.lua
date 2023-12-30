---@class AbilityDefinitionSilenceCreep: AbilityDefinition
AbilityDefinitionSilenceCreep = {}
_G.AbilityDefinitionSilenceCreep = AbilityDefinitionSilenceCreep

---new
---@param id string
---@return AbilityDefinitionSilenceCreep
function AbilityDefinitionSilenceCreep:new(id) end

---setAttackSpeedModifier
---<**Nsi4**>
---@param level integer
---@param value float
function AbilityDefinitionSilenceCreep:setAttackSpeedModifier(level, value) end

---setMovementSpeedModifier
---<**Nsi3**>
---@param level integer
---@param value float
function AbilityDefinitionSilenceCreep:setMovementSpeedModifier(level, value) end

---setChanceToMiss
---<**Nsi2**>
---@param level integer
---@param value float
function AbilityDefinitionSilenceCreep:setChanceToMiss(level, value) end

---setAttacksPrevented
---<**Nsi1**>
---@param level integer
---@param value integer
function AbilityDefinitionSilenceCreep:setAttacksPrevented(level, value) end
