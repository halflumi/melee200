---@class AbilityDefinitionAntimagicShieldcreep: AbilityDefinition
AbilityDefinitionAntimagicShieldcreep = {}
_G.AbilityDefinitionAntimagicShieldcreep = AbilityDefinitionAntimagicShieldcreep

---new
---@param id string
---@return AbilityDefinitionAntimagicShieldcreep
function AbilityDefinitionAntimagicShieldcreep:new(id) end

---setMagicDamageReduction
---<**Ams2**>
---@param level integer
---@param value float
function AbilityDefinitionAntimagicShieldcreep:setMagicDamageReduction(level, value) end

---setManaLoss
---<**Ams4**>
---@param level integer
---@param value integer
function AbilityDefinitionAntimagicShieldcreep:setManaLoss(level, value) end

---setSummonedUnitDamage
---<**Ams1**>
---@param level integer
---@param value float
function AbilityDefinitionAntimagicShieldcreep:setSummonedUnitDamage(level, value) end

---setShieldLife
---<**Ams3**>
---@param level integer
---@param value integer
function AbilityDefinitionAntimagicShieldcreep:setShieldLife(level, value) end
