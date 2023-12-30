---@class AbilityDefinitionAlchemistTransmute: AbilityDefinition
AbilityDefinitionAlchemistTransmute = {}
_G.AbilityDefinitionAlchemistTransmute = AbilityDefinitionAlchemistTransmute

---new
---@param id string
---@return AbilityDefinitionAlchemistTransmute
function AbilityDefinitionAlchemistTransmute:new(id) end

---setLumberCostFactor
---<**Ntm2**>
---@param level integer
---@param value float
function AbilityDefinitionAlchemistTransmute:setLumberCostFactor(level, value) end

---setAllowBounty
---<**Ntm4**>
---@param level integer
---@param value boolean
function AbilityDefinitionAlchemistTransmute:setAllowBounty(level, value) end

---setMaxCreepLevel
---<**Ntm3**>
---@param level integer
---@param value integer
function AbilityDefinitionAlchemistTransmute:setMaxCreepLevel(level, value) end

---setGoldCostFactor
---<**Ntm1**>
---@param level integer
---@param value float
function AbilityDefinitionAlchemistTransmute:setGoldCostFactor(level, value) end
