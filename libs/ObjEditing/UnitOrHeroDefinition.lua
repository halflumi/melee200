---@class UnitOrHeroDefinition: UnitOrBuildingOrHeroDefinition
UnitOrHeroDefinition = {}
_G.UnitOrHeroDefinition = UnitOrHeroDefinition

---new
---@param id string
---@param superId string
---@return UnitOrHeroDefinition
function UnitOrHeroDefinition:new(id, superId) end

---setTransportedSize
---<**ucar**>
---@param data integer
function UnitOrHeroDefinition:setTransportedSize(data) end

---setLevel
---<**ulev**>
---@param data integer
function UnitOrHeroDefinition:setLevel(data) end

---setGroupSeparationPriority
---<**urpr**>
---@param data integer
function UnitOrHeroDefinition:setGroupSeparationPriority(data) end

---setGroupSeparationParameter
---<**urpp**>
---@param data integer
function UnitOrHeroDefinition:setGroupSeparationParameter(data) end

---setGroupSeparationGroupNumber
---<**urpg**>
---@param data integer
function UnitOrHeroDefinition:setGroupSeparationGroupNumber(data) end

---setGroupSeparationEnabled
---<**urpo**>
---@param data boolean
function UnitOrHeroDefinition:setGroupSeparationEnabled(data) end

---setFormationRank
---<**ufor**>
---@param data integer
function UnitOrHeroDefinition:setFormationRank(data) end
