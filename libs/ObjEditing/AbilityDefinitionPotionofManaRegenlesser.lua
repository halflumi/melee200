---@class AbilityDefinitionPotionofManaRegenlesser: AbilityDefinition
AbilityDefinitionPotionofManaRegenlesser = {}
_G.AbilityDefinitionPotionofManaRegenlesser = AbilityDefinitionPotionofManaRegenlesser

---new
---@param id string
---@return AbilityDefinitionPotionofManaRegenlesser
function AbilityDefinitionPotionofManaRegenlesser:new(id) end

---setNoTargetRequired
---<**irl4**>
---@param level integer
---@param value boolean
function AbilityDefinitionPotionofManaRegenlesser:setNoTargetRequired(level, value) end

---setDispelOnAttack
---<**irl5**>
---@param level integer
---@param value boolean
function AbilityDefinitionPotionofManaRegenlesser:setDispelOnAttack(level, value) end

---setManaRegenerated
---<**irl2**>
---@param level integer
---@param value float
function AbilityDefinitionPotionofManaRegenlesser:setManaRegenerated(level, value) end

---setAllowWhenFull
---<**irl3**>
---@param level integer
---@param value AllowWhenFull
function AbilityDefinitionPotionofManaRegenlesser:setAllowWhenFull(level, value) end

---setLifeRegenerated
---<**irl1**>
---@param level integer
---@param value float
function AbilityDefinitionPotionofManaRegenlesser:setLifeRegenerated(level, value) end
