---@class AbilityDefinitionArchMageMassTeleport: AbilityDefinition
AbilityDefinitionArchMageMassTeleport = {}
_G.AbilityDefinitionArchMageMassTeleport = AbilityDefinitionArchMageMassTeleport

---new
---@param id string
---@return AbilityDefinitionArchMageMassTeleport
function AbilityDefinitionArchMageMassTeleport:new(id) end

---setUseTeleportClustering
---<**Hmt3**>
---@param level integer
---@param value boolean
function AbilityDefinitionArchMageMassTeleport:setUseTeleportClustering(level, value) end

---setCastingDelay
---<**Hmt2**>
---@param level integer
---@param value float
function AbilityDefinitionArchMageMassTeleport:setCastingDelay(level, value) end

---setNumberofUnitsTeleported
---<**Hmt1**>
---@param level integer
---@param value integer
function AbilityDefinitionArchMageMassTeleport:setNumberofUnitsTeleported(level, value) end
