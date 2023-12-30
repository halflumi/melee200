---@class AbilityDefinitionInnerFire: AbilityDefinition
AbilityDefinitionInnerFire = {}
_G.AbilityDefinitionInnerFire = AbilityDefinitionInnerFire

---new
---@param id string
---@return AbilityDefinitionInnerFire
function AbilityDefinitionInnerFire:new(id) end

---setAutocastRange
---<**Inf3**>
---@param level integer
---@param value float
function AbilityDefinitionInnerFire:setAutocastRange(level, value) end

---setLifeRegenRate
---<**Inf4**>
---@param level integer
---@param value float
function AbilityDefinitionInnerFire:setLifeRegenRate(level, value) end

---setDefenseIncrease
---<**Inf2**>
---@param level integer
---@param value integer
function AbilityDefinitionInnerFire:setDefenseIncrease(level, value) end

---setDamageIncrease
---<**Inf1**>
---@param level integer
---@param value float
function AbilityDefinitionInnerFire:setDamageIncrease(level, value) end
