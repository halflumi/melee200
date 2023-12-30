---@class AbilityDefinitionAlliedBuilding: AbilityDefinition
AbilityDefinitionAlliedBuilding = {}
_G.AbilityDefinitionAlliedBuilding = AbilityDefinitionAlliedBuilding

---new
---@param id string
---@return AbilityDefinitionAlliedBuilding
function AbilityDefinitionAlliedBuilding:new(id) end

---setShowUnitIndicator
---<**Neu4**>
---@param level integer
---@param value boolean
function AbilityDefinitionAlliedBuilding:setShowUnitIndicator(level, value) end

---setActivationRadius
---<**Neu1**>
---@param level integer
---@param value float
function AbilityDefinitionAlliedBuilding:setActivationRadius(level, value) end

---setShowSelectUnitButton
---<**Neu3**>
---@param level integer
---@param value boolean
function AbilityDefinitionAlliedBuilding:setShowSelectUnitButton(level, value) end

---setInteractionType
---<**Neu2**>
---@param level integer
---@param value string
function AbilityDefinitionAlliedBuilding:setInteractionType(level, value) end
