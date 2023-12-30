---@class AbilityDefinitionItemReincarnation: AbilityDefinition
AbilityDefinitionItemReincarnation = {}
_G.AbilityDefinitionItemReincarnation = AbilityDefinitionItemReincarnation

---new
---@param id string
---@return AbilityDefinitionItemReincarnation
function AbilityDefinitionItemReincarnation:new(id) end

---setRestoredLife
---<**irc2**>
---@param level integer
---@param value integer
function AbilityDefinitionItemReincarnation:setRestoredLife(level, value) end

---setDelayAfterDeathseconds
---<**Ircd**>
---@param level integer
---@param value integer
function AbilityDefinitionItemReincarnation:setDelayAfterDeathseconds(level, value) end

---setRestoredManaforcurrent
---<**irc3**>
---@param level integer
---@param value integer
function AbilityDefinitionItemReincarnation:setRestoredManaforcurrent(level, value) end
