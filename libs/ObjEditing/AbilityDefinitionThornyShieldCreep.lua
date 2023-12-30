---@class AbilityDefinitionThornyShieldCreep: AbilityDefinition
AbilityDefinitionThornyShieldCreep = {}
_G.AbilityDefinitionThornyShieldCreep = AbilityDefinitionThornyShieldCreep

---new
---@param id string
---@return AbilityDefinitionThornyShieldCreep
function AbilityDefinitionThornyShieldCreep:new(id) end

---setDefenseBonus
---<**Uts3**>
---@param level integer
---@param value float
function AbilityDefinitionThornyShieldCreep:setDefenseBonus(level, value) end

---setReceivedDamageFactor
---<**Uts2**>
---@param level integer
---@param value float
function AbilityDefinitionThornyShieldCreep:setReceivedDamageFactor(level, value) end

---setReturnedDamageFactor
---<**Uts1**>
---@param level integer
---@param value float
function AbilityDefinitionThornyShieldCreep:setReturnedDamageFactor(level, value) end
