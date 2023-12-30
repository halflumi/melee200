---@class AbilityDefinitionManaBattery: AbilityDefinition
AbilityDefinitionManaBattery = {}
_G.AbilityDefinitionManaBattery = AbilityDefinitionManaBattery

---new
---@param id string
---@return AbilityDefinitionManaBattery
function AbilityDefinitionManaBattery:new(id) end

---setHitPointsGained
---<**Mbt2**>
---@param level integer
---@param value float
function AbilityDefinitionManaBattery:setHitPointsGained(level, value) end

---setWaterHeight
---<**Mbt4**>
---@param level integer
---@param value float
function AbilityDefinitionManaBattery:setWaterHeight(level, value) end

---setAutocastRequirement
---<**Mbt3**>
---@param level integer
---@param value float
function AbilityDefinitionManaBattery:setAutocastRequirement(level, value) end

---setManaGained
---<**Mbt1**>
---@param level integer
---@param value float
function AbilityDefinitionManaBattery:setManaGained(level, value) end

---setRegenerateOnlyAtNight
---<**Mbt5**>
---@param level integer
---@param value boolean
function AbilityDefinitionManaBattery:setRegenerateOnlyAtNight(level, value) end
