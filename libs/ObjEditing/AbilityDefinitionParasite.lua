---@class AbilityDefinitionParasite: AbilityDefinition
AbilityDefinitionParasite = {}
_G.AbilityDefinitionParasite = AbilityDefinitionParasite

---new
---@param id string
---@return AbilityDefinitionParasite
function AbilityDefinitionParasite:new(id) end

---setStackingType
---<**Poi4**>
---@param level integer
---@param value integer
function AbilityDefinitionParasite:setStackingType(level, value) end

---setSummonedUnitDuration
---<**Npa6**>
---@param level integer
---@param value float
function AbilityDefinitionParasite:setSummonedUnitDuration(level, value) end

---setSummonedUnitCount
---<**Npa5**>
---@param level integer
---@param value integer
function AbilityDefinitionParasite:setSummonedUnitCount(level, value) end

---setAttackSpeedFactor
---<**Poi2**>
---@param level integer
---@param value float
function AbilityDefinitionParasite:setAttackSpeedFactor(level, value) end

---setDamageperSecond
---<**Poi1**>
---@param level integer
---@param value float
function AbilityDefinitionParasite:setDamageperSecond(level, value) end

---setMovementSpeedFactor
---<**Poi3**>
---@param level integer
---@param value float
function AbilityDefinitionParasite:setMovementSpeedFactor(level, value) end

---setUnitType
---<**ipmu**>
---@param level integer
---@param value string
function AbilityDefinitionParasite:setUnitType(level, value) end
