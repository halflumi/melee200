---@class AbilityDefinitionCloudofFogItem: AbilityDefinition
AbilityDefinitionCloudofFogItem = {}
_G.AbilityDefinitionCloudofFogItem = AbilityDefinitionCloudofFogItem

---new
---@param id string
---@return AbilityDefinitionCloudofFogItem
function AbilityDefinitionCloudofFogItem:new(id) end

---setAttackSpeedModifier
---<**Nsi4**>
---@param level integer
---@param value float
function AbilityDefinitionCloudofFogItem:setAttackSpeedModifier(level, value) end

---setMovementSpeedModifier
---<**Nsi3**>
---@param level integer
---@param value float
function AbilityDefinitionCloudofFogItem:setMovementSpeedModifier(level, value) end

---setChanceToMiss
---<**Nsi2**>
---@param level integer
---@param value float
function AbilityDefinitionCloudofFogItem:setChanceToMiss(level, value) end

---setAttacksPrevented
---<**Nsi1**>
---@param level integer
---@param value integer
function AbilityDefinitionCloudofFogItem:setAttacksPrevented(level, value) end
