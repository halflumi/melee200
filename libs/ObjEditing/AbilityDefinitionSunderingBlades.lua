---@class AbilityDefinitionSunderingBlades: AbilityDefinition
AbilityDefinitionSunderingBlades = {}
_G.AbilityDefinitionSunderingBlades = AbilityDefinitionSunderingBlades

---new
---@param id string
---@return AbilityDefinitionSunderingBlades
function AbilityDefinitionSunderingBlades:new(id) end

---setBonusDamageFlat
---<**Hsb1**>
---@param level integer
---@param value float
function AbilityDefinitionSunderingBlades:setBonusDamageFlat(level, value) end

---setBonusDamagePercent
---<**Hsb2**>
---@param level integer
---@param value float
function AbilityDefinitionSunderingBlades:setBonusDamagePercent(level, value) end

---setDefenseTypeAffected
---<**Hsb3**>
---@param level integer
---@param types integer
function AbilityDefinitionSunderingBlades:setDefenseTypeAffected(level, types) end
