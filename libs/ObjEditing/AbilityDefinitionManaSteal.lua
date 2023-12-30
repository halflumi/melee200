---@class AbilityDefinitionManaSteal: AbilityDefinition
AbilityDefinitionManaSteal = {}
_G.AbilityDefinitionManaSteal = AbilityDefinitionManaSteal

---new
---@param id string
---@return AbilityDefinitionManaSteal
function AbilityDefinitionManaSteal:new(id) end

---setLeaveTargetAlive
---<**Udp5**>
---@param level integer
---@param value boolean
function AbilityDefinitionManaSteal:setLeaveTargetAlive(level, value) end

---setLifeConvertedtoMana
---<**Udp1**>
---@param level integer
---@param value float
function AbilityDefinitionManaSteal:setLifeConvertedtoMana(level, value) end

---setLifeConvertedtoLife
---<**Udp2**>
---@param level integer
---@param value float
function AbilityDefinitionManaSteal:setLifeConvertedtoLife(level, value) end

---setLifeConversionAsPercent
---<**Udp4**>
---@param level integer
---@param value boolean
function AbilityDefinitionManaSteal:setLifeConversionAsPercent(level, value) end

---setManaConversionAsPercent
---<**Udp3**>
---@param level integer
---@param value boolean
function AbilityDefinitionManaSteal:setManaConversionAsPercent(level, value) end
