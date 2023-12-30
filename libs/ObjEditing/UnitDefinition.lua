---@class UnitDefinition: UnitOrHeroDefinition
UnitDefinition = {}
_G.UnitDefinition = UnitDefinition

---new
---@param id string
---@param superId string
---@return UnitDefinition
function UnitDefinition:new(id, superId) end

---setCasterUpgradeTips
---<**ucut**>
---@param data string
function UnitDefinition:setCasterUpgradeTips(data) end

---setCasterUpgradeNames
---<**ucun**>
---@param data string
function UnitDefinition:setCasterUpgradeNames(data) end

---setCasterUpgradeArt
---<**ucua**>
---@param data string
function UnitDefinition:setCasterUpgradeArt(data) end
