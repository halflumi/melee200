---@class AbilityDefinitionManaFlare: AbilityDefinition
AbilityDefinitionManaFlare = {}
_G.AbilityDefinitionManaFlare = AbilityDefinitionManaFlare

---new
---@param id string
---@return AbilityDefinitionManaFlare
function AbilityDefinitionManaFlare:new(id) end

---setHeroMaximumDamage
---<**mfl4**>
---@param level integer
---@param value float
function AbilityDefinitionManaFlare:setHeroMaximumDamage(level, value) end

---setHeroDamagePerManaPoint
---<**mfl2**>
---@param level integer
---@param value float
function AbilityDefinitionManaFlare:setHeroDamagePerManaPoint(level, value) end

---setCasterOnlySplash
---<**mfl6**>
---@param level integer
---@param value boolean
function AbilityDefinitionManaFlare:setCasterOnlySplash(level, value) end

---setDamageCooldown
---<**mfl5**>
---@param level integer
---@param value float
function AbilityDefinitionManaFlare:setDamageCooldown(level, value) end

---setUnitDamagePerManaPoint
---<**mfl1**>
---@param level integer
---@param value float
function AbilityDefinitionManaFlare:setUnitDamagePerManaPoint(level, value) end

---setUnitMaximumDamage
---<**mfl3**>
---@param level integer
---@param value float
function AbilityDefinitionManaFlare:setUnitMaximumDamage(level, value) end
