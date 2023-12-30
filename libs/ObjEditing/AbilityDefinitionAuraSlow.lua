---@class AbilityDefinitionAuraSlow: AbilityDefinition
AbilityDefinitionAuraSlow = {}
_G.AbilityDefinitionAuraSlow = AbilityDefinitionAuraSlow

---new
---@param id string
---@return AbilityDefinitionAuraSlow
function AbilityDefinitionAuraSlow:new(id) end

---setMovementSpeedFactor
---<**Slo1**>
---@param level integer
---@param value float
function AbilityDefinitionAuraSlow:setMovementSpeedFactor(level, value) end

---setAlwaysAutocast
---<**Slo3**>
---@param level integer
---@param value boolean
function AbilityDefinitionAuraSlow:setAlwaysAutocast(level, value) end

---setAttackSpeedFactor
---<**Slo2**>
---@param level integer
---@param value float
function AbilityDefinitionAuraSlow:setAttackSpeedFactor(level, value) end
