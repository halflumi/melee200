---@class AbilityDefinitionCriticalStrikecreep: AbilityDefinition
AbilityDefinitionCriticalStrikecreep = {}
_G.AbilityDefinitionCriticalStrikecreep = AbilityDefinitionCriticalStrikecreep

---new
---@param id string
---@return AbilityDefinitionCriticalStrikecreep
function AbilityDefinitionCriticalStrikecreep:new(id) end

---setDamageMultiplier
---<**Ocr2**>
---@param level integer
---@param value float
function AbilityDefinitionCriticalStrikecreep:setDamageMultiplier(level, value) end

---setChancetoCriticalStrike
---<**Ocr1**>
---@param level integer
---@param value float
function AbilityDefinitionCriticalStrikecreep:setChancetoCriticalStrike(level, value) end

---setDamageBonus
---<**Ocr3**>
---@param level integer
---@param value float
function AbilityDefinitionCriticalStrikecreep:setDamageBonus(level, value) end

---setChancetoEvade
---<**Ocr4**>
---@param level integer
---@param value float
function AbilityDefinitionCriticalStrikecreep:setChancetoEvade(level, value) end

---setNeverMiss
---<**Ocr5**>
---@param level integer
---@param value boolean
function AbilityDefinitionCriticalStrikecreep:setNeverMiss(level, value) end
