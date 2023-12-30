---@class AbilityDefinitionHardenedSkin: AbilityDefinition
AbilityDefinitionHardenedSkin = {}
_G.AbilityDefinitionHardenedSkin = AbilityDefinitionHardenedSkin

---new
---@param id string
---@return AbilityDefinitionHardenedSkin
function AbilityDefinitionHardenedSkin:new(id) end

---setIncludeRangedDamage
---<**Ssk4**>
---@param level integer
---@param value boolean
function AbilityDefinitionHardenedSkin:setIncludeRangedDamage(level, value) end

---setMinimumDamage
---<**Ssk2**>
---@param level integer
---@param value float
function AbilityDefinitionHardenedSkin:setMinimumDamage(level, value) end

---setIgnoredDamage
---<**Ssk3**>
---@param level integer
---@param value float
function AbilityDefinitionHardenedSkin:setIgnoredDamage(level, value) end

---setChancetoReduceDamage
---<**Ssk1**>
---@param level integer
---@param value float
function AbilityDefinitionHardenedSkin:setChancetoReduceDamage(level, value) end

---setIncludeMeleeDamage
---<**Ssk5**>
---@param level integer
---@param value boolean
function AbilityDefinitionHardenedSkin:setIncludeMeleeDamage(level, value) end
