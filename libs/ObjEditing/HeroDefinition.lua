---@class HeroDefinition: UnitOrHeroDefinition
HeroDefinition = {}
_G.HeroDefinition = HeroDefinition

---new
---@param id string
---@param superId string
---@return HeroDefinition
function HeroDefinition:new(id, superId) end

---hideHeroDeathMsg
---<**uhhd**>
---@param flag boolean
function HeroDefinition:hideHeroDeathMsg(flag) end

---hideHeroInterfaceIcon
---<**uhhb**>
---@param flag boolean
function HeroDefinition:hideHeroInterfaceIcon(flag) end

---hideHeroMinimapDisplay
---<**uhhm**>
---@param flag boolean
function HeroDefinition:hideHeroMinimapDisplay(flag) end

---setTooltipRevive
---<**utpr**>
---@param data string
function HeroDefinition:setTooltipRevive(data) end

---setTooltipAwaken
---<**uawt**>
---@param data string
function HeroDefinition:setTooltipAwaken(data) end

---setStrengthPerLevel
---<**ustp**>
---@param data float
function HeroDefinition:setStrengthPerLevel(data) end

---setStartingStrength
---<**ustr**>
---@param data integer
function HeroDefinition:setStartingStrength(data) end

---setStartingIntelligence
---<**uint**>
---@param data integer
function HeroDefinition:setStartingIntelligence(data) end

---setStartingAgility
---<**uagi**>
---@param data integer
function HeroDefinition:setStartingAgility(data) end

---setProperNamesUsed
---<**upru**>
---@param data integer
function HeroDefinition:setProperNamesUsed(data) end

---setProperNames
---<**upro**>
---@param data string
function HeroDefinition:setProperNames(data) end

---setPrimaryAttribute
---<**upra**>
---@param data string
function HeroDefinition:setPrimaryAttribute(data) end

---setIntelligencePerLevel
---<**uinp**>
---@param data float
function HeroDefinition:setIntelligencePerLevel(data) end

---setHeroRevivalLocations
---<**urva**>
---@param data string
function HeroDefinition:setHeroRevivalLocations(data) end

---setHeroAbilities
---<**uhab**>
---@param data string
function HeroDefinition:setHeroAbilities(data) end

---setAgilityPerLevel
---<**uagp**>
---@param data float
function HeroDefinition:setAgilityPerLevel(data) end

---setRequierementsForTier
---<**urq1**>
---@param tier integer
---@param data string
function HeroDefinition:setRequierementsForTier(tier, data) end
