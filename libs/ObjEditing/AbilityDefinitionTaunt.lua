---@class AbilityDefinitionTaunt: AbilityDefinition
AbilityDefinitionTaunt = {}
_G.AbilityDefinitionTaunt = AbilityDefinitionTaunt

---new
---@param id string
---@return AbilityDefinitionTaunt
function AbilityDefinitionTaunt:new(id) end

---setPreferFriendlies
---<**Tau2**>
---@param level integer
---@param value integer
function AbilityDefinitionTaunt:setPreferFriendlies(level, value) end

---setPreferHostiles
---<**Tau1**>
---@param level integer
---@param value integer
function AbilityDefinitionTaunt:setPreferHostiles(level, value) end

---setMaxUnits
---<**Tau3**>
---@param level integer
---@param value integer
function AbilityDefinitionTaunt:setMaxUnits(level, value) end
