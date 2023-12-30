---@class AbilityDefinitionManaBurndemon: AbilityDefinition
AbilityDefinitionManaBurndemon = {}
_G.AbilityDefinitionManaBurndemon = AbilityDefinitionManaBurndemon

---new
---@param id string
---@return AbilityDefinitionManaBurndemon
function AbilityDefinitionManaBurndemon:new(id) end

---setMaxManaDrained
---<**Emb1**>
---@param level integer
---@param value float
function AbilityDefinitionManaBurndemon:setMaxManaDrained(level, value) end

---setBoltLifetime
---<**Emb3**>
---@param level integer
---@param value float
function AbilityDefinitionManaBurndemon:setBoltLifetime(level, value) end

---setBoltDelay
---<**Emb2**>
---@param level integer
---@param value float
function AbilityDefinitionManaBurndemon:setBoltDelay(level, value) end
