---@class AbilityDefinitionDefend: AbilityDefinition
AbilityDefinitionDefend = {}
_G.AbilityDefinitionDefend = AbilityDefinitionDefend

---new
---@param id string
---@return AbilityDefinitionDefend
function AbilityDefinitionDefend:new(id) end

---setDamageTaken
---<**Def1**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setDamageTaken(level, value) end

---setChancetoDeflect
---<**Def6**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setChancetoDeflect(level, value) end

---setMovementSpeedFactor
---<**Def3**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setMovementSpeedFactor(level, value) end

---setAttackSpeedFactor
---<**Def4**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setAttackSpeedFactor(level, value) end

---setDamageDealt
---<**Def2**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setDamageDealt(level, value) end

---setDeflectDamageTakenSpells
---<**Def8**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setDeflectDamageTakenSpells(level, value) end

---setDeflectDamageTakenPiercing
---<**Def7**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setDeflectDamageTakenPiercing(level, value) end

---setMagicDamageReduction
---<**Def5**>
---@param level integer
---@param value float
function AbilityDefinitionDefend:setMagicDamageReduction(level, value) end
