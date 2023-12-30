---@class AbilityDefinitionDefendItem: AbilityDefinition
AbilityDefinitionDefendItem = {}
_G.AbilityDefinitionDefendItem = AbilityDefinitionDefendItem

---new
---@param id string
---@return AbilityDefinitionDefendItem
function AbilityDefinitionDefendItem:new(id) end

---setDamageTaken
---<**Def1**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setDamageTaken(level, value) end

---setChancetoDeflect
---<**Def6**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setChancetoDeflect(level, value) end

---setMovementSpeedFactor
---<**Def3**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setMovementSpeedFactor(level, value) end

---setAttackSpeedFactor
---<**Def4**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setAttackSpeedFactor(level, value) end

---setDamageDealt
---<**Def2**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setDamageDealt(level, value) end

---setDeflectDamageTakenSpells
---<**Def8**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setDeflectDamageTakenSpells(level, value) end

---setDeflectDamageTakenPiercing
---<**Def7**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setDeflectDamageTakenPiercing(level, value) end

---setMagicDamageReduction
---<**Def5**>
---@param level integer
---@param value float
function AbilityDefinitionDefendItem:setMagicDamageReduction(level, value) end
