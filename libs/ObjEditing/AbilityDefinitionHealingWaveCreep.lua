---@class AbilityDefinitionHealingWaveCreep: AbilityDefinition
AbilityDefinitionHealingWaveCreep = {}
_G.AbilityDefinitionHealingWaveCreep = AbilityDefinitionHealingWaveCreep

---new
---@param id string
---@return AbilityDefinitionHealingWaveCreep
function AbilityDefinitionHealingWaveCreep:new(id) end

---setDamageperTarget
---<**Ocl1**>
---@param level integer
---@param value float
function AbilityDefinitionHealingWaveCreep:setDamageperTarget(level, value) end

---setNumberofTargetsHit
---<**Ocl2**>
---@param level integer
---@param value integer
function AbilityDefinitionHealingWaveCreep:setNumberofTargetsHit(level, value) end

---setDamageReductionperTarget
---<**Ocl3**>
---@param level integer
---@param value float
function AbilityDefinitionHealingWaveCreep:setDamageReductionperTarget(level, value) end
