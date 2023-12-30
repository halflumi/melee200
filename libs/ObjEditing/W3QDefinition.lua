---@class W3QDefinition
local W3QDefinition = {}

---new
---@param id string
---@param superId string
---@return W3QDefinition
function W3QDefinition:new(id, superId) end

---setButtonPositionX
---<**gbpx**>
---@param value integer
function W3QDefinition:setButtonPositionX(value) end

---setButtonPositionY
---<**gbpy**>
---@param value integer
function W3QDefinition:setButtonPositionY(value) end

---setClass
---<**gcls**>
---@param value UpgradeClass
function W3QDefinition:setClass(value) end

---setGoldCostBase
---<**gglb**>
---@param value integer
function W3QDefinition:setGoldCostBase(value) end

---setGoldCostIncrement
---<**gglm**>
---@param value integer
function W3QDefinition:setGoldCostIncrement(value) end

---setLevels
---<**glvl**>
---@param value integer
function W3QDefinition:setLevels(value) end

---setLumberCostBase
---<**glmb**>
---@param value integer
function W3QDefinition:setLumberCostBase(value) end

---setLumberCostIncrement
---<**glmm**>
---@param value integer
function W3QDefinition:setLumberCostIncrement(value) end

---setRace
---<**grac**>
---@param value Race
function W3QDefinition:setRace(value) end

---setTimeBase
---<**gtib**>
---@param value integer
function W3QDefinition:setTimeBase(value) end

---setTimeIncrement
---<**gtim**>
---@param value integer
function W3QDefinition:setTimeIncrement(value) end

---setTransferWithUnitOwnership
---<**ginh**>
---@param value boolean
function W3QDefinition:setTransferWithUnitOwnership(value) end

---setIcon
---<**gar1**>
---@param level integer
---@param value string
function W3QDefinition:setIcon(level, value) end

---setRequirements
---<**greq**>
---@param level integer
---@param value string
function W3QDefinition:setRequirements(level, value) end

---setRequirementsLevels
---<**grqc**>
---@param level integer
---@param value string
function W3QDefinition:setRequirementsLevels(level, value) end

---setEditorSuffix
---<**gnsf**>
---@param level integer
---@param value string
function W3QDefinition:setEditorSuffix(level, value) end

---setHotkey
---<**ghk1**>
---@param level integer
---@param value string
function W3QDefinition:setHotkey(level, value) end

---setName
---<**gnam**>
---@param level integer
---@param value string
function W3QDefinition:setName(level, value) end

---setTooltip
---<**gtp1**>
---@param level integer
---@param value string
function W3QDefinition:setTooltip(level, value) end

---setTooltipExtended
---<**gub1**>
---@param level integer
---@param value string
function W3QDefinition:setTooltipExtended(level, value) end

---setEffectType
---@param effectIndex integer
---@param effectType UpgradeEffectType
function W3QDefinition:setEffectType(effectIndex, effectType) end

---setEffectBase
---@param effectIndex integer
---@param value float
function W3QDefinition:setEffectBase(effectIndex, value) end

---setEffectIncrement
---@param effectIndex integer
---@param value float
function W3QDefinition:setEffectIncrement(effectIndex, value) end

---setEffectCode
---@param effectIndex integer
---@param value string
function W3QDefinition:setEffectCode(effectIndex, value) end
