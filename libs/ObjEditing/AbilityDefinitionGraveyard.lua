---@class AbilityDefinitionGraveyard: AbilityDefinition
AbilityDefinitionGraveyard = {}
_G.AbilityDefinitionGraveyard = AbilityDefinitionGraveyard

---new
---@param id string
---@return AbilityDefinitionGraveyard
function AbilityDefinitionGraveyard:new(id) end

---setRadiusofCorpses
---<**Gyd3**>
---@param level integer
---@param value float
function AbilityDefinitionGraveyard:setRadiusofCorpses(level, value) end

---setMaximumNumberofCorpses
---<**Gyd1**>
---@param level integer
---@param value integer
function AbilityDefinitionGraveyard:setMaximumNumberofCorpses(level, value) end

---setRadiusofGravestones
---<**Gyd2**>
---@param level integer
---@param value float
function AbilityDefinitionGraveyard:setRadiusofGravestones(level, value) end

---setCorpseUnitType
---<**Gydu**>
---@param level integer
---@param value string
function AbilityDefinitionGraveyard:setCorpseUnitType(level, value) end
