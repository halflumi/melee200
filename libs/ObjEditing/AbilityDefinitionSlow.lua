---@class AbilityDefinitionSlow: AbilityDefinition
AbilityDefinitionSlow = {}
_G.AbilityDefinitionSlow = AbilityDefinitionSlow

---new
---@param id string
---@return AbilityDefinitionSlow
function AbilityDefinitionSlow:new(id) end

---setMovementSpeedFactor
---<**Slo1**>
---@param level integer
---@param value float
function AbilityDefinitionSlow:setMovementSpeedFactor(level, value) end

---setAlwaysAutocast
---<**Slo3**>
---@param level integer
---@param value boolean
function AbilityDefinitionSlow:setAlwaysAutocast(level, value) end

---setAttackSpeedFactor
---<**Slo2**>
---@param level integer
---@param value float
function AbilityDefinitionSlow:setAttackSpeedFactor(level, value) end
