---@class AbilityDefinitionLightningPurge: AbilityDefinition
AbilityDefinitionLightningPurge = {}
_G.AbilityDefinitionLightningPurge = AbilityDefinitionLightningPurge

---new
---@param id string
---@return AbilityDefinitionLightningPurge
function AbilityDefinitionLightningPurge:new(id) end

---setHeroPauseDuration
---<**Prg5**>
---@param level integer
---@param value float
function AbilityDefinitionLightningPurge:setHeroPauseDuration(level, value) end

---setUnitPauseDuration
---<**Prg4**>
---@param level integer
---@param value float
function AbilityDefinitionLightningPurge:setUnitPauseDuration(level, value) end

---setMovementUpdateFrequency
---<**Prg1**>
---@param level integer
---@param value integer
function AbilityDefinitionLightningPurge:setMovementUpdateFrequency(level, value) end

---setAttackUpdateFrequency
---<**Prg2**>
---@param level integer
---@param value integer
function AbilityDefinitionLightningPurge:setAttackUpdateFrequency(level, value) end

---setManaLoss
---<**Prg6**>
---@param level integer
---@param value integer
function AbilityDefinitionLightningPurge:setManaLoss(level, value) end

---setSummonedUnitDamage
---<**Prg3**>
---@param level integer
---@param value float
function AbilityDefinitionLightningPurge:setSummonedUnitDamage(level, value) end
