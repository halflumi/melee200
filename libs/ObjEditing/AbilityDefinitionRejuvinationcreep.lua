---@class AbilityDefinitionRejuvinationcreep: AbilityDefinition
AbilityDefinitionRejuvinationcreep = {}
_G.AbilityDefinitionRejuvinationcreep = AbilityDefinitionRejuvinationcreep

---new
---@param id string
---@return AbilityDefinitionRejuvinationcreep
function AbilityDefinitionRejuvinationcreep:new(id) end

---setManaPointsGained
---<**Rej2**>
---@param level integer
---@param value float
function AbilityDefinitionRejuvinationcreep:setManaPointsGained(level, value) end

---setNoTargetRequired
---<**Rej4**>
---@param level integer
---@param value boolean
function AbilityDefinitionRejuvinationcreep:setNoTargetRequired(level, value) end

---setHitPointsGained
---<**Rej1**>
---@param level integer
---@param value float
function AbilityDefinitionRejuvinationcreep:setHitPointsGained(level, value) end

---setAllowWhenFull
---<**Rej3**>
---@param level integer
---@param value AllowWhenFull
function AbilityDefinitionRejuvinationcreep:setAllowWhenFull(level, value) end
