---@class AbilityDefinitionFlare: AbilityDefinition
AbilityDefinitionFlare = {}
_G.AbilityDefinitionFlare = AbilityDefinitionFlare

---new
---@param id string
---@return AbilityDefinitionFlare
function AbilityDefinitionFlare:new(id) end

---setDetectionType
---<**Fla1**>
---@param level integer
---@param value string
function AbilityDefinitionFlare:setDetectionType(level, value) end

---setFlareCount
---<**Fla3**>
---@param level integer
---@param value integer
function AbilityDefinitionFlare:setFlareCount(level, value) end

---setEffectDelay
---<**Fla2**>
---@param level integer
---@param value float
function AbilityDefinitionFlare:setEffectDelay(level, value) end
