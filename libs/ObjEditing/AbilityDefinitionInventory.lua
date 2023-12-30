---@class AbilityDefinitionInventory: AbilityDefinition
AbilityDefinitionInventory = {}
_G.AbilityDefinitionInventory = AbilityDefinitionInventory

---new
---@param id string
---@return AbilityDefinitionInventory
function AbilityDefinitionInventory:new(id) end

---setCanDropItems
---<**inv5**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventory:setCanDropItems(level, value) end

---setCanUseItems
---<**inv3**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventory:setCanUseItems(level, value) end

---setDropItemsOnDeath
---<**inv2**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventory:setDropItemsOnDeath(level, value) end

---setCanGetItems
---<**inv4**>
---@param level integer
---@param value boolean
function AbilityDefinitionInventory:setCanGetItems(level, value) end

---setItemCapacity
---<**inv1**>
---@param level integer
---@param value integer
function AbilityDefinitionInventory:setItemCapacity(level, value) end
