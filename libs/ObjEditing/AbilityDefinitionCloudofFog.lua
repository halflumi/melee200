---@class AbilityDefinitionCloudofFog: AbilityDefinition
AbilityDefinitionCloudofFog = {}
_G.AbilityDefinitionCloudofFog = AbilityDefinitionCloudofFog

---new
---@param id string
---@return AbilityDefinitionCloudofFog
function AbilityDefinitionCloudofFog:new(id) end

---setAttackSpeedModifier
---<**Nsi4**>
---@param level integer
---@param value float
function AbilityDefinitionCloudofFog:setAttackSpeedModifier(level, value) end

---setMovementSpeedModifier
---<**Nsi3**>
---@param level integer
---@param value float
function AbilityDefinitionCloudofFog:setMovementSpeedModifier(level, value) end

---setChanceToMiss
---<**Nsi2**>
---@param level integer
---@param value float
function AbilityDefinitionCloudofFog:setChanceToMiss(level, value) end

---setAttacksPrevented
---<**Nsi1**>
---@param level integer
---@param value integer
function AbilityDefinitionCloudofFog:setAttacksPrevented(level, value) end
