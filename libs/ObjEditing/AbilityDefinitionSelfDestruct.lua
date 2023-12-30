---@class AbilityDefinitionSelfDestruct: AbilityDefinition
AbilityDefinitionSelfDestruct = {}
_G.AbilityDefinitionSelfDestruct = AbilityDefinitionSelfDestruct

---new
---@param id string
---@return AbilityDefinitionSelfDestruct
function AbilityDefinitionSelfDestruct:new(id) end

---setPartialDamageAmount
---<**Dda4**>
---@param level integer
---@param value float
function AbilityDefinitionSelfDestruct:setPartialDamageAmount(level, value) end

---setFullDamageRadius
---<**Dda1**>
---@param level integer
---@param value float
function AbilityDefinitionSelfDestruct:setFullDamageRadius(level, value) end

---setFullDamageAmount
---<**Dda2**>
---@param level integer
---@param value float
function AbilityDefinitionSelfDestruct:setFullDamageAmount(level, value) end

---setExplodesonDeath
---<**Sds6**>
---@param level integer
---@param value boolean
function AbilityDefinitionSelfDestruct:setExplodesonDeath(level, value) end

---setBuildingDamageFactor
---<**Sds1**>
---@param level integer
---@param value float
function AbilityDefinitionSelfDestruct:setBuildingDamageFactor(level, value) end

---setPartialDamageRadius
---<**Dda3**>
---@param level integer
---@param value float
function AbilityDefinitionSelfDestruct:setPartialDamageRadius(level, value) end
