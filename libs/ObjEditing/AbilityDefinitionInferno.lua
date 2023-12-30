---@class AbilityDefinitionInferno: AbilityDefinition
AbilityDefinitionInferno = {}
_G.AbilityDefinitionInferno = AbilityDefinitionInferno

---new
---@param id string
---@return AbilityDefinitionInferno
function AbilityDefinitionInferno:new(id) end

---setDuration
---<**Uin2**>
---@param level integer
---@param value float
function AbilityDefinitionInferno:setDuration(level, value) end

---setDamage
---<**Uin1**>
---@param level integer
---@param value float
function AbilityDefinitionInferno:setDamage(level, value) end

---setSummonedUnit
---<**Uin4**>
---@param level integer
---@param value string
function AbilityDefinitionInferno:setSummonedUnit(level, value) end

---setImpactDelay
---<**Uin3**>
---@param level integer
---@param value float
function AbilityDefinitionInferno:setImpactDelay(level, value) end
