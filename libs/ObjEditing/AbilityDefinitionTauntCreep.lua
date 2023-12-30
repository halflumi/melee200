---@class AbilityDefinitionTauntCreep: AbilityDefinition
AbilityDefinitionTauntCreep = {}
_G.AbilityDefinitionTauntCreep = AbilityDefinitionTauntCreep

---new
---@param id string
---@return AbilityDefinitionTauntCreep
function AbilityDefinitionTauntCreep:new(id) end

---setPreferFriendlies
---<**Tau2**>
---@param level integer
---@param value integer
function AbilityDefinitionTauntCreep:setPreferFriendlies(level, value) end

---setPreferHostiles
---<**Tau1**>
---@param level integer
---@param value integer
function AbilityDefinitionTauntCreep:setPreferHostiles(level, value) end

---setMaxUnits
---<**Tau3**>
---@param level integer
---@param value integer
function AbilityDefinitionTauntCreep:setMaxUnits(level, value) end
