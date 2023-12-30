---@class AbilityDefinitionBattleRoar: AbilityDefinition
AbilityDefinitionBattleRoar = {}
_G.AbilityDefinitionBattleRoar = AbilityDefinitionBattleRoar

---new
---@param id string
---@return AbilityDefinitionBattleRoar
function AbilityDefinitionBattleRoar:new(id) end

---setDamageIncrease
---<**Nbr1**>
---@param level integer
---@param value float
function AbilityDefinitionBattleRoar:setDamageIncrease(level, value) end

---setDefenseIncrease
---<**Roa2**>
---@param level integer
---@param value integer
function AbilityDefinitionBattleRoar:setDefenseIncrease(level, value) end

---setPreferHostiles
---<**Roa5**>
---@param level integer
---@param value boolean
function AbilityDefinitionBattleRoar:setPreferHostiles(level, value) end

---setLifeRegenerationRate
---<**Roa3**>
---@param level integer
---@param value float
function AbilityDefinitionBattleRoar:setLifeRegenerationRate(level, value) end

---setManaRegen
---<**Roa4**>
---@param level integer
---@param value float
function AbilityDefinitionBattleRoar:setManaRegen(level, value) end

---setPreferFriendlies
---<**Roa6**>
---@param level integer
---@param value boolean
function AbilityDefinitionBattleRoar:setPreferFriendlies(level, value) end

---setMaxUnits
---<**Roa7**>
---@param level integer
---@param value integer
function AbilityDefinitionBattleRoar:setMaxUnits(level, value) end
