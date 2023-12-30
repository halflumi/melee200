---@class AbilityDefinitionStaffoTeleportation: AbilityDefinition
AbilityDefinitionStaffoTeleportation = {}
_G.AbilityDefinitionStaffoTeleportation = AbilityDefinitionStaffoTeleportation

---new
---@param id string
---@return AbilityDefinitionStaffoTeleportation
function AbilityDefinitionStaffoTeleportation:new(id) end

---setUseTeleportClustering
---<**Hmt3**>
---@param level integer
---@param value boolean
function AbilityDefinitionStaffoTeleportation:setUseTeleportClustering(level, value) end

---setCastingDelay
---<**Hmt2**>
---@param level integer
---@param value float
function AbilityDefinitionStaffoTeleportation:setCastingDelay(level, value) end

---setNumberofUnitsTeleported
---<**Hmt1**>
---@param level integer
---@param value integer
function AbilityDefinitionStaffoTeleportation:setNumberofUnitsTeleported(level, value) end
