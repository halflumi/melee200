---@class AbilityDefinitionRoarAIrr: AbilityDefinition
AbilityDefinitionRoarAIrr = {}
_G.AbilityDefinitionRoarAIrr = AbilityDefinitionRoarAIrr

---new
---@param id string
---@return AbilityDefinitionRoarAIrr
function AbilityDefinitionRoarAIrr:new(id) end

---setDamageIncrease
---<**Roa1**>
---@param level integer
---@param value float
function AbilityDefinitionRoarAIrr:setDamageIncrease(level, value) end

---setDefenseIncrease
---<**Roa2**>
---@param level integer
---@param value integer
function AbilityDefinitionRoarAIrr:setDefenseIncrease(level, value) end

---setPreferHostiles
---<**Roa5**>
---@param level integer
---@param value boolean
function AbilityDefinitionRoarAIrr:setPreferHostiles(level, value) end

---setManaRegen
---<**Roa4**>
---@param level integer
---@param value float
function AbilityDefinitionRoarAIrr:setManaRegen(level, value) end

---setLifeRegenerationRate
---<**Roa3**>
---@param level integer
---@param value float
function AbilityDefinitionRoarAIrr:setLifeRegenerationRate(level, value) end

---setPreferFriendlies
---<**Roa6**>
---@param level integer
---@param value boolean
function AbilityDefinitionRoarAIrr:setPreferFriendlies(level, value) end

---setMaxUnits
---<**Roa7**>
---@param level integer
---@param value integer
function AbilityDefinitionRoarAIrr:setMaxUnits(level, value) end
