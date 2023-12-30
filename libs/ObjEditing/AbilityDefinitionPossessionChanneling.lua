---@class AbilityDefinitionPossessionChanneling: AbilityDefinition
AbilityDefinitionPossessionChanneling = {}
_G.AbilityDefinitionPossessionChanneling = AbilityDefinitionPossessionChanneling

---new
---@param id string
---@return AbilityDefinitionPossessionChanneling
function AbilityDefinitionPossessionChanneling:new(id) end

---setTargetIsMagicImmune
---<**Pos4**>
---@param level integer
---@param value boolean
function AbilityDefinitionPossessionChanneling:setTargetIsMagicImmune(level, value) end

---setMaximumCreepLevel
---<**Pos1**>
---@param level integer
---@param value integer
function AbilityDefinitionPossessionChanneling:setMaximumCreepLevel(level, value) end

---setDamageAmplification
---<**Pos2**>
---@param level integer
---@param value float
function AbilityDefinitionPossessionChanneling:setDamageAmplification(level, value) end

---setTargetIsInvulnerable
---<**Pos3**>
---@param level integer
---@param value boolean
function AbilityDefinitionPossessionChanneling:setTargetIsInvulnerable(level, value) end
