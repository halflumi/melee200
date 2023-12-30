---@class AbilityDefinitionLichDarkRitual: AbilityDefinition
AbilityDefinitionLichDarkRitual = {}
_G.AbilityDefinitionLichDarkRitual = AbilityDefinitionLichDarkRitual

---new
---@param id string
---@return AbilityDefinitionLichDarkRitual
function AbilityDefinitionLichDarkRitual:new(id) end

---setLeaveTargetAlive
---<**Udp5**>
---@param level integer
---@param value boolean
function AbilityDefinitionLichDarkRitual:setLeaveTargetAlive(level, value) end

---setLifeConvertedtoMana
---<**Udp1**>
---@param level integer
---@param value float
function AbilityDefinitionLichDarkRitual:setLifeConvertedtoMana(level, value) end

---setLifeConvertedtoLife
---<**Udp2**>
---@param level integer
---@param value float
function AbilityDefinitionLichDarkRitual:setLifeConvertedtoLife(level, value) end

---setLifeConversionAsPercent
---<**Udp4**>
---@param level integer
---@param value boolean
function AbilityDefinitionLichDarkRitual:setLifeConversionAsPercent(level, value) end

---setManaConversionAsPercent
---<**Udp3**>
---@param level integer
---@param value boolean
function AbilityDefinitionLichDarkRitual:setManaConversionAsPercent(level, value) end
