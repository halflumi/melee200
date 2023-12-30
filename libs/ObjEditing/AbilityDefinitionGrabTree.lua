---@class AbilityDefinitionGrabTree: AbilityDefinition
AbilityDefinitionGrabTree = {}
_G.AbilityDefinitionGrabTree = AbilityDefinitionGrabTree

---new
---@param id string
---@return AbilityDefinitionGrabTree
function AbilityDefinitionGrabTree:new(id) end

---setEnabledAttackIndex
---<**gra4**>
---@param level integer
---@param value integer
function AbilityDefinitionGrabTree:setEnabledAttackIndex(level, value) end

---setMaximumAttacks
---<**gra5**>
---@param level integer
---@param value integer
function AbilityDefinitionGrabTree:setMaximumAttacks(level, value) end

---setAttachDelay
---<**gra1**>
---@param level integer
---@param value float
function AbilityDefinitionGrabTree:setAttachDelay(level, value) end

---setDisabledAttackIndex
---<**gra3**>
---@param level integer
---@param value integer
function AbilityDefinitionGrabTree:setDisabledAttackIndex(level, value) end

---setRemoveDelay
---<**gra2**>
---@param level integer
---@param value float
function AbilityDefinitionGrabTree:setRemoveDelay(level, value) end
