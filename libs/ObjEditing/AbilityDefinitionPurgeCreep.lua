---@class AbilityDefinitionPurgeCreep: AbilityDefinition
AbilityDefinitionPurgeCreep = {}
_G.AbilityDefinitionPurgeCreep = AbilityDefinitionPurgeCreep

---new
---@param id string
---@return AbilityDefinitionPurgeCreep
function AbilityDefinitionPurgeCreep:new(id) end

---setHeroPauseDuration
---<**Prg5**>
---@param level integer
---@param value float
function AbilityDefinitionPurgeCreep:setHeroPauseDuration(level, value) end

---setUnitPauseDuration
---<**Prg4**>
---@param level integer
---@param value float
function AbilityDefinitionPurgeCreep:setUnitPauseDuration(level, value) end

---setMovementUpdateFrequency
---<**Prg1**>
---@param level integer
---@param value integer
function AbilityDefinitionPurgeCreep:setMovementUpdateFrequency(level, value) end

---setAttackUpdateFrequency
---<**Prg2**>
---@param level integer
---@param value integer
function AbilityDefinitionPurgeCreep:setAttackUpdateFrequency(level, value) end

---setManaLoss
---<**Prg6**>
---@param level integer
---@param value integer
function AbilityDefinitionPurgeCreep:setManaLoss(level, value) end

---setSummonedUnitDamage
---<**Prg3**>
---@param level integer
---@param value float
function AbilityDefinitionPurgeCreep:setSummonedUnitDamage(level, value) end
