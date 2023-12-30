---@class AbilityDefinitionStrengthMod: AbilityDefinition
AbilityDefinitionStrengthMod = {}
_G.AbilityDefinitionStrengthMod = AbilityDefinitionStrengthMod

---new
---@param id string
---@return AbilityDefinitionStrengthMod
function AbilityDefinitionStrengthMod:new(id) end

---setHideButton
---<**Ihid**>
---@param level integer
---@param value boolean
function AbilityDefinitionStrengthMod:setHideButton(level, value) end

---setIntelligenceBonus
---<**Iint**>
---@param level integer
---@param value integer
function AbilityDefinitionStrengthMod:setIntelligenceBonus(level, value) end

---setAgilityBonus
---<**Iagi**>
---@param level integer
---@param value integer
function AbilityDefinitionStrengthMod:setAgilityBonus(level, value) end

---setStrengthBonus
---<**Istr**>
---@param level integer
---@param value integer
function AbilityDefinitionStrengthMod:setStrengthBonus(level, value) end
