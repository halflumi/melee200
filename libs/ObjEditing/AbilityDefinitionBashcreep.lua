---@class AbilityDefinitionBashcreep: AbilityDefinition
AbilityDefinitionBashcreep = {}
_G.AbilityDefinitionBashcreep = AbilityDefinitionBashcreep

---new
---@param id string
---@return AbilityDefinitionBashcreep
function AbilityDefinitionBashcreep:new(id) end

---setChancetoBash
---<**Hbh1**>
---@param level integer
---@param value float
function AbilityDefinitionBashcreep:setChancetoBash(level, value) end

---setChancetoMiss
---<**Hbh4**>
---@param level integer
---@param value float
function AbilityDefinitionBashcreep:setChancetoMiss(level, value) end

---setDamageBonus
---<**Hbh3**>
---@param level integer
---@param value float
function AbilityDefinitionBashcreep:setDamageBonus(level, value) end

---setNeverMiss
---<**Hbh5**>
---@param level integer
---@param value boolean
function AbilityDefinitionBashcreep:setNeverMiss(level, value) end

---setDamageMultiplier
---<**Hbh2**>
---@param level integer
---@param value float
function AbilityDefinitionBashcreep:setDamageMultiplier(level, value) end
