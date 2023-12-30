---@class AbilityDefinitionItemRestore: AbilityDefinition
AbilityDefinitionItemRestore = {}
_G.AbilityDefinitionItemRestore = AbilityDefinitionItemRestore

---new
---@param id string
---@return AbilityDefinitionItemRestore
function AbilityDefinitionItemRestore:new(id) end

---setManaPointsRestored
---<**Imps**>
---@param level integer
---@param value integer
function AbilityDefinitionItemRestore:setManaPointsRestored(level, value) end

---setHitPointsRestored
---<**Ihps**>
---@param level integer
---@param value integer
function AbilityDefinitionItemRestore:setHitPointsRestored(level, value) end
