---@class BuildingDefinition: UnitOrBuildingOrHeroDefinition
BuildingDefinition = {}
_G.BuildingDefinition = BuildingDefinition

---new
---@param id string
---@param superId string
---@return BuildingDefinition
function BuildingDefinition:new(id, superId) end

---setUpgradesTo
---<**uupt**>
---@param data string
function BuildingDefinition:setUpgradesTo(data) end

---setUnitsTrained
---<**utra**>
---@param data string
function BuildingDefinition:setUnitsTrained(data) end

---setRevivesDeadHeros
---<**urev**>
---@param data boolean
function BuildingDefinition:setRevivesDeadHeros(data) end

---setResearchesAvailable
---<**ures**>
---@param data string
function BuildingDefinition:setResearchesAvailable(data) end

---setPlacementRequiresWaterRadius
---<**upaw**>
---@param data float
function BuildingDefinition:setPlacementRequiresWaterRadius(data) end

---setPlacementRequires
---<**upap**>
---@param data string
function BuildingDefinition:setPlacementRequires(data) end

---setPlacementPreventedBy
---<**upar**>
---@param data string
function BuildingDefinition:setPlacementPreventedBy(data) end

---setPathingMap
---<**upat**>
---@param data string
function BuildingDefinition:setPathingMap(data) end

---setNeutralBuildingValidAsRandomBuilding
---<**unbr**>
---@param data boolean
function BuildingDefinition:setNeutralBuildingValidAsRandomBuilding(data) end

---setNeutralBuildingShowsMinimapIcon
---<**unbm**>
---@param data boolean
function BuildingDefinition:setNeutralBuildingShowsMinimapIcon(data) end

---setItemsMade
---<**umki**>
---@param data string
function BuildingDefinition:setItemsMade(data) end

---setGroundTexture
---<**uubs**>
---@param data string
function BuildingDefinition:setGroundTexture(data) end

---setConstructionSound
---<**ubsl**>
---@param data string
function BuildingDefinition:setConstructionSound(data) end
