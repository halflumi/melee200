---@class AbilityDefinitionDevourMagic: AbilityDefinition
AbilityDefinitionDevourMagic = {}
_G.AbilityDefinitionDevourMagic = AbilityDefinitionDevourMagic

---new
---@param id string
---@return AbilityDefinitionDevourMagic
function AbilityDefinitionDevourMagic:new(id) end

---setManaPerBuff
---<**dvm4**>
---@param level integer
---@param value float
function AbilityDefinitionDevourMagic:setManaPerBuff(level, value) end

---setLifePerUnit
---<**dvm1**>
---@param level integer
---@param value float
function AbilityDefinitionDevourMagic:setLifePerUnit(level, value) end

---setManaPerUnit
---<**dvm2**>
---@param level integer
---@param value float
function AbilityDefinitionDevourMagic:setManaPerUnit(level, value) end

---setIgnoreFriendlyBuffs
---<**dvm6**>
---@param level integer
---@param value boolean
function AbilityDefinitionDevourMagic:setIgnoreFriendlyBuffs(level, value) end

---setLifePerBuff
---<**dvm3**>
---@param level integer
---@param value float
function AbilityDefinitionDevourMagic:setLifePerBuff(level, value) end

---setSummonedUnitDamage
---<**dvm5**>
---@param level integer
---@param value float
function AbilityDefinitionDevourMagic:setSummonedUnitDamage(level, value) end
