---@class AbilityDefinitionAuraCommandCreep: AbilityDefinition
AbilityDefinitionAuraCommandCreep = {}
_G.AbilityDefinitionAuraCommandCreep = AbilityDefinitionAuraCommandCreep

---new
---@param id string
---@return AbilityDefinitionAuraCommandCreep
function AbilityDefinitionAuraCommandCreep:new(id) end

---setRangedBonus
---<**Ear3**>
---@param level integer
---@param value boolean
function AbilityDefinitionAuraCommandCreep:setRangedBonus(level, value) end

---setFlatBonus
---<**Ear4**>
---@param level integer
---@param value boolean
function AbilityDefinitionAuraCommandCreep:setFlatBonus(level, value) end

---setAttackDamageIncrease
---<**Cac1**>
---@param level integer
---@param value float
function AbilityDefinitionAuraCommandCreep:setAttackDamageIncrease(level, value) end

---setMeleeBonus
---<**Ear2**>
---@param level integer
---@param value boolean
function AbilityDefinitionAuraCommandCreep:setMeleeBonus(level, value) end
