---@class AbilityDefinitionPurgeorb: AbilityDefinition
AbilityDefinitionPurgeorb = {}
_G.AbilityDefinitionPurgeorb = AbilityDefinitionPurgeorb

---new
---@param id string
---@return AbilityDefinitionPurgeorb
function AbilityDefinitionPurgeorb:new(id) end

---setHeroPauseDuration
---<**Prg5**>
---@param level integer
---@param value float
function AbilityDefinitionPurgeorb:setHeroPauseDuration(level, value) end

---setUnitPauseDuration
---<**Prg4**>
---@param level integer
---@param value float
function AbilityDefinitionPurgeorb:setUnitPauseDuration(level, value) end

---setMovementUpdateFrequency
---<**Prg1**>
---@param level integer
---@param value integer
function AbilityDefinitionPurgeorb:setMovementUpdateFrequency(level, value) end

---setAttackUpdateFrequency
---<**Prg2**>
---@param level integer
---@param value integer
function AbilityDefinitionPurgeorb:setAttackUpdateFrequency(level, value) end

---setManaLoss
---<**Prg6**>
---@param level integer
---@param value integer
function AbilityDefinitionPurgeorb:setManaLoss(level, value) end

---setSummonedUnitDamage
---<**Prg3**>
---@param level integer
---@param value float
function AbilityDefinitionPurgeorb:setSummonedUnitDamage(level, value) end
