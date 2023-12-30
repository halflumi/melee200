---@class AbilityDefinitionRejuvination: AbilityDefinition
AbilityDefinitionRejuvination = {}
_G.AbilityDefinitionRejuvination = AbilityDefinitionRejuvination

---new
---@param id string
---@return AbilityDefinitionRejuvination
function AbilityDefinitionRejuvination:new(id) end

---setManaPointsGained
---<**Rej2**>
---@param level integer
---@param value float
function AbilityDefinitionRejuvination:setManaPointsGained(level, value) end

---setNoTargetRequired
---<**Rej4**>
---@param level integer
---@param value boolean
function AbilityDefinitionRejuvination:setNoTargetRequired(level, value) end

---setHitPointsGained
---<**Rej1**>
---@param level integer
---@param value float
function AbilityDefinitionRejuvination:setHitPointsGained(level, value) end

---setAllowWhenFull
---<**Rej3**>
---@param level integer
---@param value AllowWhenFull
function AbilityDefinitionRejuvination:setAllowWhenFull(level, value) end
