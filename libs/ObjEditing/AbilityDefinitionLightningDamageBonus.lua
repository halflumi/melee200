---@class AbilityDefinitionLightningDamageBonus: AbilityDefinition
AbilityDefinitionLightningDamageBonus = {}
_G.AbilityDefinitionLightningDamageBonus = AbilityDefinitionLightningDamageBonus

---new
---@param id string
---@return AbilityDefinitionLightningDamageBonus
function AbilityDefinitionLightningDamageBonus:new(id) end

---setEnabledAttackIndex
---<**Iob5**>
---@param level integer
---@param value integer
function AbilityDefinitionLightningDamageBonus:setEnabledAttackIndex(level, value) end

---setDamageBonus
---<**Idam**>
---@param level integer
---@param value float
function AbilityDefinitionLightningDamageBonus:setDamageBonus(level, value) end

---setDamageBonusDice
---<**Idic**>
---@param level integer
---@param value integer
function AbilityDefinitionLightningDamageBonus:setDamageBonusDice(level, value) end
