---@class AbilityDefinitionScrollofLifeRegen: AbilityDefinition
AbilityDefinitionScrollofLifeRegen = {}
_G.AbilityDefinitionScrollofLifeRegen = AbilityDefinitionScrollofLifeRegen

---new
---@param id string
---@return AbilityDefinitionScrollofLifeRegen
function AbilityDefinitionScrollofLifeRegen:new(id) end

---setNoTargetRequired
---<**irl4**>
---@param level integer
---@param value boolean
function AbilityDefinitionScrollofLifeRegen:setNoTargetRequired(level, value) end

---setDispelOnAttack
---<**irl5**>
---@param level integer
---@param value boolean
function AbilityDefinitionScrollofLifeRegen:setDispelOnAttack(level, value) end

---setManaRegenerated
---<**irl2**>
---@param level integer
---@param value float
function AbilityDefinitionScrollofLifeRegen:setManaRegenerated(level, value) end

---setAllowWhenFull
---<**irl3**>
---@param level integer
---@param value AllowWhenFull
function AbilityDefinitionScrollofLifeRegen:setAllowWhenFull(level, value) end

---setLifeRegenerated
---<**irl1**>
---@param level integer
---@param value float
function AbilityDefinitionScrollofLifeRegen:setLifeRegenerated(level, value) end
