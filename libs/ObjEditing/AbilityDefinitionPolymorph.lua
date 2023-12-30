---@class AbilityDefinitionPolymorph: AbilityDefinition
AbilityDefinitionPolymorph = {}
_G.AbilityDefinitionPolymorph = AbilityDefinitionPolymorph

---new
---@param id string
---@return AbilityDefinitionPolymorph
function AbilityDefinitionPolymorph:new(id) end

---setMorphUnitsGround
---<**Ply2**>
---@param level integer
---@param value string
function AbilityDefinitionPolymorph:setMorphUnitsGround(level, value) end

---setMorphUnitsWater
---<**Ply5**>
---@param level integer
---@param value string
function AbilityDefinitionPolymorph:setMorphUnitsWater(level, value) end

---setMorphUnitsAmphibious
---<**Ply4**>
---@param level integer
---@param value string
function AbilityDefinitionPolymorph:setMorphUnitsAmphibious(level, value) end

---setMorphUnitsAir
---<**Ply3**>
---@param level integer
---@param value string
function AbilityDefinitionPolymorph:setMorphUnitsAir(level, value) end

---setMaximumCreepLevel
---<**Ply1**>
---@param level integer
---@param value integer
function AbilityDefinitionPolymorph:setMaximumCreepLevel(level, value) end
