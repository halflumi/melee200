---@class AbilityDefinitionRoarcreep: AbilityDefinition
AbilityDefinitionRoarcreep = {}
_G.AbilityDefinitionRoarcreep = AbilityDefinitionRoarcreep

---new
---@param id string
---@return AbilityDefinitionRoarcreep
function AbilityDefinitionRoarcreep:new(id) end

---setDamageIncrease
---<**Roa1**>
---@param level integer
---@param value float
function AbilityDefinitionRoarcreep:setDamageIncrease(level, value) end

---setDefenseIncrease
---<**Roa2**>
---@param level integer
---@param value integer
function AbilityDefinitionRoarcreep:setDefenseIncrease(level, value) end

---setPreferHostiles
---<**Roa5**>
---@param level integer
---@param value boolean
function AbilityDefinitionRoarcreep:setPreferHostiles(level, value) end

---setManaRegen
---<**Roa4**>
---@param level integer
---@param value float
function AbilityDefinitionRoarcreep:setManaRegen(level, value) end

---setLifeRegenerationRate
---<**Roa3**>
---@param level integer
---@param value float
function AbilityDefinitionRoarcreep:setLifeRegenerationRate(level, value) end

---setPreferFriendlies
---<**Roa6**>
---@param level integer
---@param value boolean
function AbilityDefinitionRoarcreep:setPreferFriendlies(level, value) end

---setMaxUnits
---<**Roa7**>
---@param level integer
---@param value integer
function AbilityDefinitionRoarcreep:setMaxUnits(level, value) end
