---@class AbilityDefinitionPotionofLifeRegen: AbilityDefinition
AbilityDefinitionPotionofLifeRegen = {}
_G.AbilityDefinitionPotionofLifeRegen = AbilityDefinitionPotionofLifeRegen

---new
---@param id string
---@return AbilityDefinitionPotionofLifeRegen
function AbilityDefinitionPotionofLifeRegen:new(id) end

---setNoTargetRequired
---<**irl4**>
---@param level integer
---@param value boolean
function AbilityDefinitionPotionofLifeRegen:setNoTargetRequired(level, value) end

---setDispelOnAttack
---<**irl5**>
---@param level integer
---@param value boolean
function AbilityDefinitionPotionofLifeRegen:setDispelOnAttack(level, value) end

---setManaRegenerated
---<**irl2**>
---@param level integer
---@param value float
function AbilityDefinitionPotionofLifeRegen:setManaRegenerated(level, value) end

---setAllowWhenFull
---<**irl3**>
---@param level integer
---@param value AllowWhenFull
function AbilityDefinitionPotionofLifeRegen:setAllowWhenFull(level, value) end

---setLifeRegenerated
---<**irl1**>
---@param level integer
---@param value float
function AbilityDefinitionPotionofLifeRegen:setLifeRegenerated(level, value) end
