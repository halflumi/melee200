---@class AbilityDefinitionInventoryPackMule: AbilityDefinition
AbilityDefinitionInventoryPackMule = {}
_G.AbilityDefinitionInventoryPackMule = AbilityDefinitionInventoryPackMule

---new
---@param id string
---@return AbilityDefinitionInventoryPackMule
function AbilityDefinitionInventoryPackMule:new(id) end

---setCanDropItems
---<**inv5**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventoryPackMule:setCanDropItems(level, value) end

---setCanUseItems
---<**inv3**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventoryPackMule:setCanUseItems(level, value) end

---setDropItemsOnDeath
---<**inv2**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventoryPackMule:setDropItemsOnDeath(level, value) end

---setCanGetItems
---<**inv4**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventoryPackMule:setCanGetItems(level, value) end

---setItemCapacity
---<**inv1**>
---@param level integer
---@param value integer
function AbilityDefinitionInventoryPackMule:setItemCapacity(level, value) end
