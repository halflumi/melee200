---@class AbilityDefinitionSlowAIos: AbilityDefinition
AbilityDefinitionSlowAIos = {}
_G.AbilityDefinitionSlowAIos = AbilityDefinitionSlowAIos

---new
---@param id string
---@return AbilityDefinitionSlowAIos
function AbilityDefinitionSlowAIos:new(id) end

---setMovementSpeedFactor
---<**Slo1**>
---@param level integer
---@param value float
function AbilityDefinitionSlowAIos:setMovementSpeedFactor(level, value) end

---setAlwaysAutocast
---<**Slo3**>
---@param level integer
---@param value boolean
function AbilityDefinitionSlowAIos:setAlwaysAutocast(level, value) end

---setAttackSpeedFactor
---<**Slo2**>
---@param level integer
---@param value float
function AbilityDefinitionSlowAIos:setAttackSpeedFactor(level, value) end
