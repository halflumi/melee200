---@class AbilityDefinitionPermanentImmolation: AbilityDefinition
AbilityDefinitionPermanentImmolation = {}
_G.AbilityDefinitionPermanentImmolation = AbilityDefinitionPermanentImmolation

---new
---@param id string
---@return AbilityDefinitionPermanentImmolation
function AbilityDefinitionPermanentImmolation:new(id) end

---setManaDrainedperSecond
---<**Eim2**>
---@param level integer
---@param value float
function AbilityDefinitionPermanentImmolation:setManaDrainedperSecond(level, value) end

---setBufferManaRequired
---<**Eim3**>
---@param level integer
---@param value float
function AbilityDefinitionPermanentImmolation:setBufferManaRequired(level, value) end

---setDamageperInterval
---<**Eim1**>
---@param level integer
---@param value float
function AbilityDefinitionPermanentImmolation:setDamageperInterval(level, value) end
