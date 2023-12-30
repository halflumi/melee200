---@class AbilityDefinitionEtherealForm: AbilityDefinition
AbilityDefinitionEtherealForm = {}
_G.AbilityDefinitionEtherealForm = AbilityDefinitionEtherealForm

---new
---@param id string
---@return AbilityDefinitionEtherealForm
function AbilityDefinitionEtherealForm:new(id) end

---setNormalFormUnit
---<**Eme1**>
---@param level integer
---@param value string
function AbilityDefinitionEtherealForm:setNormalFormUnit(level, value) end

---setLandingDelayTime
---<**Eme4**>
---@param level integer
---@param value float
function AbilityDefinitionEtherealForm:setLandingDelayTime(level, value) end

---setAltitudeAdjustmentDuration
---<**Eme3**>
---@param level integer
---@param value float
function AbilityDefinitionEtherealForm:setAltitudeAdjustmentDuration(level, value) end

---setMorphingFlags
---<**Eme2**>
---@param level integer
---@param value integer
function AbilityDefinitionEtherealForm:setMorphingFlags(level, value) end

---setAlternateFormUnit
---<**Emeu**>
---@param level integer
---@param value string
function AbilityDefinitionEtherealForm:setAlternateFormUnit(level, value) end
