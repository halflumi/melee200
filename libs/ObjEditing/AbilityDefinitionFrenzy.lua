---@class AbilityDefinitionFrenzy: AbilityDefinition
AbilityDefinitionFrenzy = {}
_G.AbilityDefinitionFrenzy = AbilityDefinitionFrenzy

---new
---@param id string
---@return AbilityDefinitionFrenzy
function AbilityDefinitionFrenzy:new(id) end

---setMovementSpeedIncrease
---<**Blo2**>
---@param level integer
---@param value float
function AbilityDefinitionFrenzy:setMovementSpeedIncrease(level, value) end

---setAttackSpeedIncrease
---<**Blo1**>
---@param level integer
---@param value float
function AbilityDefinitionFrenzy:setAttackSpeedIncrease(level, value) end

---setScalingFactor
---<**Blo3**>
---@param level integer
---@param value float
function AbilityDefinitionFrenzy:setScalingFactor(level, value) end
