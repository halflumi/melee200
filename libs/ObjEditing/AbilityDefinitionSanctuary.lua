---@class AbilityDefinitionSanctuary: AbilityDefinition
AbilityDefinitionSanctuary = {}
_G.AbilityDefinitionSanctuary = AbilityDefinitionSanctuary

---new
---@param id string
---@return AbilityDefinitionSanctuary
function AbilityDefinitionSanctuary:new(id) end

---setHitPointsPerSecond
---<**Nsa5**>
---@param level integer
---@param value float
function AbilityDefinitionSanctuary:setHitPointsPerSecond(level, value) end

---setMagicDamageReduction
---<**Nsa4**>
---@param level integer
---@param value float
function AbilityDefinitionSanctuary:setMagicDamageReduction(level, value) end

---setBuildingTypesAllowed
---<**Nsa1**>
---@param level integer
---@param value string
function AbilityDefinitionSanctuary:setBuildingTypesAllowed(level, value) end

---setHeroRegenerationDelay
---<**Nsa2**>
---@param level integer
---@param value float
function AbilityDefinitionSanctuary:setHeroRegenerationDelay(level, value) end

---setUnitRegenerationDelay
---<**Nsa3**>
---@param level integer
---@param value float
function AbilityDefinitionSanctuary:setUnitRegenerationDelay(level, value) end
