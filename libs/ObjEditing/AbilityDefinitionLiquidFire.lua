---@class AbilityDefinitionLiquidFire: AbilityDefinition
AbilityDefinitionLiquidFire = {}
_G.AbilityDefinitionLiquidFire = AbilityDefinitionLiquidFire

---new
---@param id string
---@return AbilityDefinitionLiquidFire
function AbilityDefinitionLiquidFire:new(id) end

---setAttackSpeedReduction
---<**liq3**>
---@param level integer
---@param value float
function AbilityDefinitionLiquidFire:setAttackSpeedReduction(level, value) end

---setMovementSpeedReduction
---<**liq2**>
---@param level integer
---@param value float
function AbilityDefinitionLiquidFire:setMovementSpeedReduction(level, value) end

---setRepairsAllowed
---<**liq4**>
---@param level integer
---@param value boolean
function AbilityDefinitionLiquidFire:setRepairsAllowed(level, value) end

---setExtraDamagePerSecond
---<**liq1**>
---@param level integer
---@param value float
function AbilityDefinitionLiquidFire:setExtraDamagePerSecond(level, value) end
