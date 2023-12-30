---@class AbilityDefinitionSpellBook: AbilityDefinition
AbilityDefinitionSpellBook = {}
_G.AbilityDefinitionSpellBook = AbilityDefinitionSpellBook

---new
---@param id string
---@return AbilityDefinitionSpellBook
function AbilityDefinitionSpellBook:new(id) end

---setMaximumSpells
---<**spb4**>
---@param level integer
---@param value integer
function AbilityDefinitionSpellBook:setMaximumSpells(level, value) end

---setSharedSpellCooldown
---<**spb2**>
---@param level integer
---@param value boolean
function AbilityDefinitionSpellBook:setSharedSpellCooldown(level, value) end

---setSpellList
---<**spb1**>
---@param level integer
---@param value string
function AbilityDefinitionSpellBook:setSpellList(level, value) end

---setMinimumSpells
---<**spb3**>
---@param level integer
---@param value integer
function AbilityDefinitionSpellBook:setMinimumSpells(level, value) end

---setBaseOrderID
---<**spb5**>
---@param level integer
---@param value string
function AbilityDefinitionSpellBook:setBaseOrderID(level, value) end
