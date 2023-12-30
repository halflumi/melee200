---@class BuildingAndHeroDefinition: UnitOrBuildingOrHeroDefinition
BuildingAndHeroDefinition = {}
_G.BuildingAndHeroDefinition = BuildingAndHeroDefinition

---new
---@param id string
---@param superId string
---@return BuildingAndHeroDefinition
function BuildingAndHeroDefinition:new(id, superId)
    return setmetatable({}, self)
end

---setUpgradesTo
---<**uupt**>
---@param data string
function BuildingAndHeroDefinition:setUpgradesTo(data) end

---setUnitsTrained
---<**utra**>
---@param data string
function BuildingAndHeroDefinition:setUnitsTrained(data) end

---setRevivesDeadHeros
---<**urev**>
---@param data boolean
function BuildingAndHeroDefinition:setRevivesDeadHeros(data) end

---setResearchesAvailable
---<**ures**>
---@param data string
function BuildingAndHeroDefinition:setResearchesAvailable(data) end

---setPlacementRequiresWaterRadius
---<**upaw**>
---@param data float
function BuildingAndHeroDefinition:setPlacementRequiresWaterRadius(data) end

---setPlacementRequires
---<**upap**>
---@param data string
function BuildingAndHeroDefinition:setPlacementRequires(data) end

---setPlacementPreventedBy
---<**upar**>
---@param data string
function BuildingAndHeroDefinition:setPlacementPreventedBy(data) end

---setPathingMap
---<**upat**>
---@param data string
function BuildingAndHeroDefinition:setPathingMap(data) end

---setNeutralBuildingValidAsRandomBuilding
---<**unbr**>
---@param data boolean
function BuildingAndHeroDefinition:setNeutralBuildingValidAsRandomBuilding(data) end

---setNeutralBuildingShowsMinimapIcon
---<**unbm**>
---@param data boolean
function BuildingAndHeroDefinition:setNeutralBuildingShowsMinimapIcon(data) end

---setItemsMade
---<**umki**>
---@param data string
function BuildingAndHeroDefinition:setItemsMade(data) end

---setGroundTexture
---<**uubs**>
---@param data string
function BuildingAndHeroDefinition:setGroundTexture(data) end

---setConstructionSound
---<**ubsl**>
---@param data string
function BuildingAndHeroDefinition:setConstructionSound(data) end

---setTooltipRevive
---<**utpr**>
---@param data string
function BuildingAndHeroDefinition:setTooltipRevive(data) end

---setTooltipAwaken
---<**uawt**>
---@param data string
function BuildingAndHeroDefinition:setTooltipAwaken(data) end

---setStrengthPerLevel
---<**ustp**>
---@param data float
function BuildingAndHeroDefinition:setStrengthPerLevel(data) end

---setStartingStrength
---<**ustr**>
---@param data integer
function BuildingAndHeroDefinition:setStartingStrength(data) end

---setStartingIntelligence
---<**uint**>
---@param data integer
function BuildingAndHeroDefinition:setStartingIntelligence(data) end

---setStartingAgility
---<**uagi**>
---@param data integer
function BuildingAndHeroDefinition:setStartingAgility(data) end

---setProperNamesUsed
---<**upru**>
---@param data integer
function BuildingAndHeroDefinition:setProperNamesUsed(data) end

---setProperNames
---<**upro**>
---@param data string
function BuildingAndHeroDefinition:setProperNames(data) end

---setPrimaryAttribute
---<**upra**>
---@param data string
function BuildingAndHeroDefinition:setPrimaryAttribute(data) end

---setIntelligencePerLevel
---<**uinp**>
---@param data float
function BuildingAndHeroDefinition:setIntelligencePerLevel(data) end

---setHeroRevivalLocations
---<**urva**>
---@param data string
function BuildingAndHeroDefinition:setHeroRevivalLocations(data) end

---setHeroAbilities
---<**uhab**>
---@param data string
function BuildingAndHeroDefinition:setHeroAbilities(data) end

---setAgilityPerLevel
---<**uagp**>
---@param data float
function BuildingAndHeroDefinition:setAgilityPerLevel(data) end
