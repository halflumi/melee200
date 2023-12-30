---@class AbilityDefinitionRejuvinationFurbolg: AbilityDefinition
AbilityDefinitionRejuvinationFurbolg = {}
_G.AbilityDefinitionRejuvinationFurbolg = AbilityDefinitionRejuvinationFurbolg

---new
---@param id string
---@return AbilityDefinitionRejuvinationFurbolg
function AbilityDefinitionRejuvinationFurbolg:new(id) end

---setManaPointsGained
---<**Rej2**>
---@param level integer
---@param value float
function AbilityDefinitionRejuvinationFurbolg:setManaPointsGained(level, value) end

---setNoTargetRequired
---<**Rej4**>
---@param level integer
---@param value boolean
function AbilityDefinitionRejuvinationFurbolg:setNoTargetRequired(level, value) end

---setHitPointsGained
---<**Rej1**>
---@param level integer
---@param value float
function AbilityDefinitionRejuvinationFurbolg:setHitPointsGained(level, value) end

---setAllowWhenFull
---<**Rej3**>
---@param level integer
---@param value AllowWhenFull
function AbilityDefinitionRejuvinationFurbolg:setAllowWhenFull(level, value) end
