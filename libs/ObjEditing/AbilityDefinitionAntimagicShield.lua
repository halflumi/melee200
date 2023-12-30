---@class AbilityDefinitionAntimagicShield: AbilityDefinition
AbilityDefinitionAntimagicShield = {}
_G.AbilityDefinitionAntimagicShield = AbilityDefinitionAntimagicShield

---new
---@param id string
---@return AbilityDefinitionAntimagicShield
function AbilityDefinitionAntimagicShield:new(id) end

---setMagicDamageReduction
---<**Ams2**>
---@param level integer
---@param value float
function AbilityDefinitionAntimagicShield:setMagicDamageReduction(level, value) end

---setManaLoss
---<**Ams4**>
---@param level integer
---@param value integer
function AbilityDefinitionAntimagicShield:setManaLoss(level, value) end

---setSummonedUnitDamage
---<**Ams1**>
---@param level integer
---@param value float
function AbilityDefinitionAntimagicShield:setSummonedUnitDamage(level, value) end

---setShieldLife
---<**Ams3**>
---@param level integer
---@param value integer
function AbilityDefinitionAntimagicShield:setShieldLife(level, value) end
