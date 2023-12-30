---@class AbilityDefinitionThunderClapCreep: AbilityDefinition
AbilityDefinitionThunderClapCreep = {}
_G.AbilityDefinitionThunderClapCreep = AbilityDefinitionThunderClapCreep

---new
---@param id string
---@return AbilityDefinitionThunderClapCreep
function AbilityDefinitionThunderClapCreep:new(id) end

---setDamage
---<**Ctc1**>
---@param level integer
---@param value float
function AbilityDefinitionThunderClapCreep:setDamage(level, value) end

---setExtraDamageToTarget
---<**Ctc2**>
---@param level integer
---@param value float
function AbilityDefinitionThunderClapCreep:setExtraDamageToTarget(level, value) end

---setAttackSpeedReduction
---<**Ctc4**>
---@param level integer
---@param value float
function AbilityDefinitionThunderClapCreep:setAttackSpeedReduction(level, value) end

---setMovementSpeedReduction
---<**Ctc3**>
---@param level integer
---@param value float
function AbilityDefinitionThunderClapCreep:setMovementSpeedReduction(level, value) end
