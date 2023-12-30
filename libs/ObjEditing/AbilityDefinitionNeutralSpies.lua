---@class AbilityDefinitionNeutralSpies: AbilityDefinition
AbilityDefinitionNeutralSpies = {}
_G.AbilityDefinitionNeutralSpies = AbilityDefinitionNeutralSpies

---new
---@param id string
---@return AbilityDefinitionNeutralSpies
function AbilityDefinitionNeutralSpies:new(id) end

---setGoldCostperStructure
---<**Nsp1**>
---@param level integer
---@param value integer
function AbilityDefinitionNeutralSpies:setGoldCostperStructure(level, value) end

---setLumberCostperUse
---<**Nsp2**>
---@param level integer
---@param value integer
function AbilityDefinitionNeutralSpies:setLumberCostperUse(level, value) end

---setDetectionType
---<**Nsp3**>
---@param level integer
---@param value string
function AbilityDefinitionNeutralSpies:setDetectionType(level, value) end
