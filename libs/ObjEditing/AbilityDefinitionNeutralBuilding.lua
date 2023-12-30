---@class AbilityDefinitionNeutralBuilding: AbilityDefinition
AbilityDefinitionNeutralBuilding = {}
_G.AbilityDefinitionNeutralBuilding = AbilityDefinitionNeutralBuilding

---new
---@param id string
---@return AbilityDefinitionNeutralBuilding
function AbilityDefinitionNeutralBuilding:new(id) end

---setShowUnitIndicator
---<**Neu4**>
---@param level integer
---@param value boolean
function AbilityDefinitionNeutralBuilding:setShowUnitIndicator(level, value) end

---setActivationRadius
---<**Neu1**>
---@param level integer
---@param value float
function AbilityDefinitionNeutralBuilding:setActivationRadius(level, value) end

---setShowSelectUnitButton
---<**Neu3**>
---@param level integer
---@param value boolean
function AbilityDefinitionNeutralBuilding:setShowSelectUnitButton(level, value) end

---setInteractionType
---<**Neu2**>
---@param level integer
---@param value string
function AbilityDefinitionNeutralBuilding:setInteractionType(level, value) end
