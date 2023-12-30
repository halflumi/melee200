---@class AbilityDefinitionDrainLifeCreep: AbilityDefinition
AbilityDefinitionDrainLifeCreep = {}
_G.AbilityDefinitionDrainLifeCreep = AbilityDefinitionDrainLifeCreep

---new
---@param id string
---@return AbilityDefinitionDrainLifeCreep
function AbilityDefinitionDrainLifeCreep:new(id) end

---setBonusLifeDecay
---<**Ndr7**>
---@param level integer
---@param value float
function AbilityDefinitionDrainLifeCreep:setBonusLifeDecay(level, value) end

---setManaTransferredPerSecond
---<**Ndr5**>
---@param level integer
---@param value float
function AbilityDefinitionDrainLifeCreep:setManaTransferredPerSecond(level, value) end

---setBonusManaDecay
---<**Ndr9**>
---@param level integer
---@param value float
function AbilityDefinitionDrainLifeCreep:setBonusManaDecay(level, value) end

---setBonusLifeFactor
---<**Ndr6**>
---@param level integer
---@param value float
function AbilityDefinitionDrainLifeCreep:setBonusLifeFactor(level, value) end

---setBonusManaFactor
---<**Ndr8**>
---@param level integer
---@param value float
function AbilityDefinitionDrainLifeCreep:setBonusManaFactor(level, value) end

---setLifeTransferredPerSecond
---<**Ndr4**>
---@param level integer
---@param value float
function AbilityDefinitionDrainLifeCreep:setLifeTransferredPerSecond(level, value) end
