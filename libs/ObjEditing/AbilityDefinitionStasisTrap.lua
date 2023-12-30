---@class AbilityDefinitionStasisTrap: AbilityDefinition
AbilityDefinitionStasisTrap = {}
_G.AbilityDefinitionStasisTrap = AbilityDefinitionStasisTrap

---new
---@param id string
---@return AbilityDefinitionStasisTrap
function AbilityDefinitionStasisTrap:new(id) end

---setWardUnitType
---<**Stau**>
---@param level integer
---@param value string
function AbilityDefinitionStasisTrap:setWardUnitType(level, value) end

---setActivationDelay
---<**Sta1**>
---@param level integer
---@param value float
function AbilityDefinitionStasisTrap:setActivationDelay(level, value) end

---setDetectionRadius
---<**Sta2**>
---@param level integer
---@param value float
function AbilityDefinitionStasisTrap:setDetectionRadius(level, value) end

---setDetonationRadius
---<**Sta3**>
---@param level integer
---@param value float
function AbilityDefinitionStasisTrap:setDetonationRadius(level, value) end

---setStunDuration
---<**Sta4**>
---@param level integer
---@param value float
function AbilityDefinitionStasisTrap:setStunDuration(level, value) end
