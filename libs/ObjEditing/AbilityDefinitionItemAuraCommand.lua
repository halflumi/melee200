---@class AbilityDefinitionItemAuraCommand: AbilityDefinition
AbilityDefinitionItemAuraCommand = {}
_G.AbilityDefinitionItemAuraCommand = AbilityDefinitionItemAuraCommand

---new
---@param id string
---@return AbilityDefinitionItemAuraCommand
function AbilityDefinitionItemAuraCommand:new(id) end

---setRangedBonus
---<**Ear3**>
---@param level integer
---@param value boolean
function AbilityDefinitionItemAuraCommand:setRangedBonus(level, value) end

---setFlatBonus
---<**Ear4**>
---@param level integer
---@param value boolean
function AbilityDefinitionItemAuraCommand:setFlatBonus(level, value) end

---setAttackDamageIncrease
---<**Cac1**>
---@param level integer
---@param value float
function AbilityDefinitionItemAuraCommand:setAttackDamageIncrease(level, value) end

---setMeleeBonus
---<**Ear2**>
---@param level integer
---@param value boolean
function AbilityDefinitionItemAuraCommand:setMeleeBonus(level, value) end
