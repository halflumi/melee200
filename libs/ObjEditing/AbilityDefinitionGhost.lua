---@class AbilityDefinitionGhost: AbilityDefinition
AbilityDefinitionGhost = {}
_G.AbilityDefinitionGhost = AbilityDefinitionGhost

---new
---@param id string
---@return AbilityDefinitionGhost
function AbilityDefinitionGhost:new(id) end

---setDoesNotBlockBuildings
---<**Gho3**>
---@param level integer
---@param value boolean
function AbilityDefinitionGhost:setDoesNotBlockBuildings(level, value) end

---setImmunetoMorphEffects
---<**Gho2**>
---@param level integer
---@param value boolean
function AbilityDefinitionGhost:setImmunetoMorphEffects(level, value) end

---setAutoAcquireAttackTargets
---<**Gho1**>
---@param level integer
---@param value boolean
function AbilityDefinitionGhost:setAutoAcquireAttackTargets(level, value) end
