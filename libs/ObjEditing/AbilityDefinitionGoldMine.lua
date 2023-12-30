---@class AbilityDefinitionGoldMine: AbilityDefinition
AbilityDefinitionGoldMine = {}
_G.AbilityDefinitionGoldMine = AbilityDefinitionGoldMine

---new
---@param id string
---@return AbilityDefinitionGoldMine
function AbilityDefinitionGoldMine:new(id) end

---setMiningCapacity
---<**Gld3**>
---@param level integer
---@param value integer
function AbilityDefinitionGoldMine:setMiningCapacity(level, value) end

---setMaxGold
---<**Gld1**>
---@param level integer
---@param value integer
function AbilityDefinitionGoldMine:setMaxGold(level, value) end

---setMiningDuration
---<**Gld2**>
---@param level integer
---@param value float
function AbilityDefinitionGoldMine:setMiningDuration(level, value) end
