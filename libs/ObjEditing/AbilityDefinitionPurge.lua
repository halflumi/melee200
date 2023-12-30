---@class AbilityDefinitionPurge: AbilityDefinition
AbilityDefinitionPurge = {}
_G.AbilityDefinitionPurge = AbilityDefinitionPurge

---new
---@param id string
---@return AbilityDefinitionPurge
function AbilityDefinitionPurge:new(id) end

---setHeroPauseDuration
---<**Prg5**>
---@param level integer
---@param value float
function AbilityDefinitionPurge:setHeroPauseDuration(level, value) end

---setUnitPauseDuration
---<**Prg4**>
---@param level integer
---@param value float
function AbilityDefinitionPurge:setUnitPauseDuration(level, value) end

---setMovementUpdateFrequency
---<**Prg1**>
---@param level integer
---@param value integer
function AbilityDefinitionPurge:setMovementUpdateFrequency(level, value) end

---setAttackUpdateFrequency
---<**Prg2**>
---@param level integer
---@param value integer
function AbilityDefinitionPurge:setAttackUpdateFrequency(level, value) end

---setManaLoss
---<**Prg6**>
---@param level integer
---@param value integer
function AbilityDefinitionPurge:setManaLoss(level, value) end

---setSummonedUnitDamage
---<**Prg3**>
---@param level integer
---@param value float
function AbilityDefinitionPurge:setSummonedUnitDamage(level, value) end
