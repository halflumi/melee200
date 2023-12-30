---@class AbilityDefinitionBattlestations: AbilityDefinition
AbilityDefinitionBattlestations = {}
_G.AbilityDefinitionBattlestations = AbilityDefinitionBattlestations

---new
---@param id string
---@return AbilityDefinitionBattlestations
function AbilityDefinitionBattlestations:new(id) end

---setSummonBusyUnits
---<**Btl2**>
---@param level integer
---@param value boolean
function AbilityDefinitionBattlestations:setSummonBusyUnits(level, value) end

---setAllowedUnitType
---<**Btl1**>
---@param level integer
---@param value string
function AbilityDefinitionBattlestations:setAllowedUnitType(level, value) end
