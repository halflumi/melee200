---@class AbilityDefinitionDeathKnightDeathPact: AbilityDefinition
AbilityDefinitionDeathKnightDeathPact = {}
_G.AbilityDefinitionDeathKnightDeathPact = AbilityDefinitionDeathKnightDeathPact

---new
---@param id string
---@return AbilityDefinitionDeathKnightDeathPact
function AbilityDefinitionDeathKnightDeathPact:new(id) end

---setLeaveTargetAlive
---<**Udp5**>
---@param level integer
---@param value boolean
function AbilityDefinitionDeathKnightDeathPact:setLeaveTargetAlive(level, value) end

---setLifeConvertedtoMana
---<**Udp1**>
---@param level integer
---@param value float
function AbilityDefinitionDeathKnightDeathPact:setLifeConvertedtoMana(level, value) end

---setLifeConvertedtoLife
---<**Udp2**>
---@param level integer
---@param value float
function AbilityDefinitionDeathKnightDeathPact:setLifeConvertedtoLife(level, value) end

---setLifeConversionAsPercent
---<**Udp4**>
---@param level integer
---@param value boolean
function AbilityDefinitionDeathKnightDeathPact:setLifeConversionAsPercent(level, value) end

---setManaConversionAsPercent
---<**Udp3**>
---@param level integer
---@param value boolean
function AbilityDefinitionDeathKnightDeathPact:setManaConversionAsPercent(level, value) end
