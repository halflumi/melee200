---@class AbilityDefinitionAntimagicShieldAIxs: AbilityDefinition
AbilityDefinitionAntimagicShieldAIxs = {}
_G.AbilityDefinitionAntimagicShieldAIxs = AbilityDefinitionAntimagicShieldAIxs

---new
---@param id string
---@return AbilityDefinitionAntimagicShieldAIxs
function AbilityDefinitionAntimagicShieldAIxs:new(id) end

---setMagicDamageReduction
---<**Ixs2**>
---@param level integer
---@param value float
function AbilityDefinitionAntimagicShieldAIxs:setMagicDamageReduction(level, value) end

---setDamageToSummonedUnits
---<**Ixs1**>
---@param level integer
---@param value float
function AbilityDefinitionAntimagicShieldAIxs:setDamageToSummonedUnits(level, value) end

---setManaLoss
---<**Ams4**>
---@param level integer
---@param value integer
function AbilityDefinitionAntimagicShieldAIxs:setManaLoss(level, value) end

---setShieldLife
---<**Ams3**>
---@param level integer
---@param value integer
function AbilityDefinitionAntimagicShieldAIxs:setShieldLife(level, value) end
