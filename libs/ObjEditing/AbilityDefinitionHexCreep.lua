---@class AbilityDefinitionHexCreep: AbilityDefinition
AbilityDefinitionHexCreep = {}
_G.AbilityDefinitionHexCreep = AbilityDefinitionHexCreep

---new
---@param id string
---@return AbilityDefinitionHexCreep
function AbilityDefinitionHexCreep:new(id) end

---setMorphUnitsGround
---<**Ply2**>
---@param level integer
---@param value string
function AbilityDefinitionHexCreep:setMorphUnitsGround(level, value) end

---setMorphUnitsWater
---<**Ply5**>
---@param level integer
---@param value string
function AbilityDefinitionHexCreep:setMorphUnitsWater(level, value) end

---setMorphUnitsAmphibious
---<**Ply4**>
---@param level integer
---@param value string
function AbilityDefinitionHexCreep:setMorphUnitsAmphibious(level, value) end

---setMorphUnitsAir
---<**Ply3**>
---@param level integer
---@param value string
function AbilityDefinitionHexCreep:setMorphUnitsAir(level, value) end

---setMaximumCreepLevel
---<**Ply1**>
---@param level integer
---@param value integer
function AbilityDefinitionHexCreep:setMaximumCreepLevel(level, value) end
