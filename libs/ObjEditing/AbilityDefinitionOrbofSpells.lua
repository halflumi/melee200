---@class AbilityDefinitionOrbofSpells: AbilityDefinition
AbilityDefinitionOrbofSpells = {}
_G.AbilityDefinitionOrbofSpells = AbilityDefinitionOrbofSpells

---new
---@param id string
---@return AbilityDefinitionOrbofSpells
function AbilityDefinitionOrbofSpells:new(id) end

---setChanceToHitUnits
---<**Iob2**>
---@param level integer
---@param value float
function AbilityDefinitionOrbofSpells:setChanceToHitUnits(level, value) end

---setEnabledAttackIndex
---<**Iob5**>
---@param level integer
---@param value integer
function AbilityDefinitionOrbofSpells:setEnabledAttackIndex(level, value) end

---setChanceToHitSummons
---<**Iob4**>
---@param level integer
---@param value float
function AbilityDefinitionOrbofSpells:setChanceToHitSummons(level, value) end

---setChanceToHitHeros
---<**Iob3**>
---@param level integer
---@param value float
function AbilityDefinitionOrbofSpells:setChanceToHitHeros(level, value) end

---setDamageBonus
---<**Idam**>
---@param level integer
---@param value float
function AbilityDefinitionOrbofSpells:setDamageBonus(level, value) end

---setEffectAbility
---<**Iobu**>
---@param level integer
---@param value string
function AbilityDefinitionOrbofSpells:setEffectAbility(level, value) end
