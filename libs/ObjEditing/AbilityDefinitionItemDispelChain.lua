---@class AbilityDefinitionItemDispelChain: AbilityDefinition
AbilityDefinitionItemDispelChain = {}
_G.AbilityDefinitionItemDispelChain = AbilityDefinitionItemDispelChain

---new
---@param id string
---@return AbilityDefinitionItemDispelChain
function AbilityDefinitionItemDispelChain:new(id) end

---setMaximumDispelledUnits
---<**idc3**>
---@param level integer
---@param value integer
function AbilityDefinitionItemDispelChain:setMaximumDispelledUnits(level, value) end

---setSummonedUnitDamage
---<**idc2**>
---@param level integer
---@param value float
function AbilityDefinitionItemDispelChain:setSummonedUnitDamage(level, value) end

---setManaLossPerUnit
---<**idc1**>
---@param level integer
---@param value float
function AbilityDefinitionItemDispelChain:setManaLossPerUnit(level, value) end
