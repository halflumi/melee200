---@class AbilityDefinitionRoar: AbilityDefinition
AbilityDefinitionRoar = {}
_G.AbilityDefinitionRoar = AbilityDefinitionRoar

---new
---@param id string
---@return AbilityDefinitionRoar
function AbilityDefinitionRoar:new(id) end

---setDamageIncrease
---<**Roa1**>
---@param level integer
---@param value float
function AbilityDefinitionRoar:setDamageIncrease(level, value) end

---setDefenseIncrease
---<**Roa2**>
---@param level integer
---@param value integer
function AbilityDefinitionRoar:setDefenseIncrease(level, value) end

---setPreferHostiles
---<**Roa5**>
---@param level integer
---@param value boolean
function AbilityDefinitionRoar:setPreferHostiles(level, value) end

---setManaRegen
---<**Roa4**>
---@param level integer
---@param value float
function AbilityDefinitionRoar:setManaRegen(level, value) end

---setLifeRegenerationRate
---<**Roa3**>
---@param level integer
---@param value float
function AbilityDefinitionRoar:setLifeRegenerationRate(level, value) end

---setPreferFriendlies
---<**Roa6**>
---@param level integer
---@param value boolean
function AbilityDefinitionRoar:setPreferFriendlies(level, value) end

---setMaxUnits
---<**Roa7**>
---@param level integer
---@param value integer
function AbilityDefinitionRoar:setMaxUnits(level, value) end
