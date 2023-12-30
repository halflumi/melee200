---@class AbilityDefinitionCorporealForm: AbilityDefinition
AbilityDefinitionCorporealForm = {}
_G.AbilityDefinitionCorporealForm = AbilityDefinitionCorporealForm

---new
---@param id string
---@return AbilityDefinitionCorporealForm
function AbilityDefinitionCorporealForm:new(id) end

---setNormalFormUnit
---<**Eme1**>
---@param level integer
---@param value string
function AbilityDefinitionCorporealForm:setNormalFormUnit(level, value) end

---setLandingDelayTime
---<**Eme4**>
---@param level integer
---@param value float
function AbilityDefinitionCorporealForm:setLandingDelayTime(level, value) end

---setAltitudeAdjustmentDuration
---<**Eme3**>
---@param level integer
---@param value float
function AbilityDefinitionCorporealForm:setAltitudeAdjustmentDuration(level, value) end

---setMorphingFlags
---<**Eme2**>
---@param level integer
---@param value integer
function AbilityDefinitionCorporealForm:setMorphingFlags(level, value) end

---setAlternateFormUnit
---<**Emeu**>
---@param level integer
---@param value string
function AbilityDefinitionCorporealForm:setAlternateFormUnit(level, value) end
