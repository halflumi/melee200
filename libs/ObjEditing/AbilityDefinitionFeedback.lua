---@class AbilityDefinitionFeedback: AbilityDefinition
AbilityDefinitionFeedback = {}
_G.AbilityDefinitionFeedback = AbilityDefinitionFeedback

---new
---@param id string
---@return AbilityDefinitionFeedback
function AbilityDefinitionFeedback:new(id) end

---setSummonedDamage
---<**fbk5**>
---@param level integer
---@param value float
function AbilityDefinitionFeedback:setSummonedDamage(level, value) end

---setDamageRatioUnits
---<**fbk2**>
---@param level integer
---@param value float
function AbilityDefinitionFeedback:setDamageRatioUnits(level, value) end

---setMaxManaDrainedHeros
---<**fbk3**>
---@param level integer
---@param value float
function AbilityDefinitionFeedback:setMaxManaDrainedHeros(level, value) end

---setMaxManaDrainedUnits
---<**fbk1**>
---@param level integer
---@param value float
function AbilityDefinitionFeedback:setMaxManaDrainedUnits(level, value) end

---setDamageRatioHeros
---<**fbk4**>
---@param level integer
---@param value float
function AbilityDefinitionFeedback:setDamageRatioHeros(level, value) end
