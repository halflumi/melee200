---@class ItemDefinition: W3TDefinition
ItemDefinition = {}
_G.ItemDefinition = ItemDefinition

---new
---@param id string
---@param superId string
---@return ItemDefinition
function ItemDefinition:new(id, superId) end

---setAbilities
---<**iabi**>
---@param data string
function ItemDefinition:setAbilities(data) end

---setArmorType
---<**iarm**>
---@param data ArmorType
function ItemDefinition:setArmorType(data) end

---setClassification
---<**icla**>
---@param data string
function ItemDefinition:setClassification(data) end

---setTintingColor3Blue
---<**iclb**>
---@param data integer
function ItemDefinition:setTintingColor3Blue(data) end

---setTintingColor2Green
---<**iclg**>
---@param data integer
function ItemDefinition:setTintingColor2Green(data) end

---setTintingColor1Red
---<**iclr**>
---@param data integer
function ItemDefinition:setTintingColor1Red(data) end

---setCooldownGroup
---<**icid**>
---@param data string
function ItemDefinition:setCooldownGroup(data) end

---setDroppedWhenCarrierDies
---<**idrp**>
---@param data boolean
function ItemDefinition:setDroppedWhenCarrierDies(data) end

---setCanBeDropped
---<**idro**>
---@param data boolean
function ItemDefinition:setCanBeDropped(data) end

---setModelUsed
---<**ifil**>
---@param data string
function ItemDefinition:setModelUsed(data) end

---setGoldCost
---<**igol**>
---@param data integer
function ItemDefinition:setGoldCost(data) end

---setHitPoints
---<**ihtp**>
---@param data integer
function ItemDefinition:setHitPoints(data) end

---setIgnoreCooldown
---<**iicd**>
---@param data boolean
function ItemDefinition:setIgnoreCooldown(data) end

---setLevel
---<**ilev**>
---@param data integer
function ItemDefinition:setLevel(data) end

---setLumberCost
---<**ilum**>
---@param data integer
function ItemDefinition:setLumberCost(data) end

---setValidTargetForTransformation
---<**imor**>
---@param data boolean
function ItemDefinition:setValidTargetForTransformation(data) end

---setLevelUnclassified
---<**ilvo**>
---@param data integer
function ItemDefinition:setLevelUnclassified(data) end

---setPerishable
---<**iper**>
---@param data boolean
function ItemDefinition:setPerishable(data) end

---setIncludeAsRandomChoice
---<**iprn**>
---@param data boolean
function ItemDefinition:setIncludeAsRandomChoice(data) end

---setUseAutomaticallyWhenAcquired
---<**ipow**>
---@param data boolean
function ItemDefinition:setUseAutomaticallyWhenAcquired(data) end

---setPriority
---<**ipri**>
---@param data integer
function ItemDefinition:setPriority(data) end

---setScalingValue
---<**isca**>
---@param data float
function ItemDefinition:setScalingValue(data) end

---setCanBeSoldByMerchants
---<**isel**>
---@param data boolean
function ItemDefinition:setCanBeSoldByMerchants(data) end

---setCanBeSoldToMerchants
---<**ipaw**>
---@param data boolean
function ItemDefinition:setCanBeSoldToMerchants(data) end

---setStockMaximum
---<**isto**>
---@param data integer
function ItemDefinition:setStockMaximum(data) end

---setStockReplenishInterval
---<**istr**>
---@param data integer
function ItemDefinition:setStockReplenishInterval(data) end

---setStockStartDelay
---<**isst**>
---@param data integer
function ItemDefinition:setStockStartDelay(data) end

---setActivelyUsed
---<**iusa**>
---@param data boolean
function ItemDefinition:setActivelyUsed(data) end

---setNumberofCharges
---<**iuse**>
---@param data integer
function ItemDefinition:setNumberofCharges(data) end

---setInterfaceIcon
---<**iico**>
---@param data string
function ItemDefinition:setInterfaceIcon(data) end

---setMaxStack
---<**ista**>
---@param data integer
function ItemDefinition:setMaxStack(data) end
