---@class AbilityDefinitionSlowCreep: AbilityDefinition
AbilityDefinitionSlowCreep = {}
_G.AbilityDefinitionSlowCreep = AbilityDefinitionSlowCreep

---new
---@param id string
---@return AbilityDefinitionSlowCreep
function AbilityDefinitionSlowCreep:new(id) end

---setMovementSpeedFactor
---<**Slo1**>
---@param level integer
---@param value float
function AbilityDefinitionSlowCreep:setMovementSpeedFactor(level, value) end

---setAlwaysAutocast
---<**Slo3**>
---@param level integer
---@param value boolean
function AbilityDefinitionSlowCreep:setAlwaysAutocast(level, value) end

---setAttackSpeedFactor
---<**Slo2**>
---@param level integer
---@param value float
function AbilityDefinitionSlowCreep:setAttackSpeedFactor(level, value) end
