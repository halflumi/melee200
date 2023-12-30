---@class W3TDefinition
local W3TDefinition = {}

---new
---@param id string
---@param superId string
---@return W3TDefinition
function W3TDefinition:new(id, superId) end

---setTooltipExtended
---<**utub**>
---@param data string
function W3TDefinition:setTooltipExtended(data) end

---setTooltipBasic
---<**utip**>
---@param data string
function W3TDefinition:setTooltipBasic(data) end

---setRequirementsLevels
---<**urqa**>
---@param data string
function W3TDefinition:setRequirementsLevels(data) end

---setRequirements
---<**ureq**>
---@param data string
function W3TDefinition:setRequirements(data) end

---setName
---<**unam**>
---@param data string
function W3TDefinition:setName(data) end

---setHotkey
---<**uhot**>
---@param data string
function W3TDefinition:setHotkey(data) end

---setDescription
---<**ides**>
---@param data string
function W3TDefinition:setDescription(data) end

---setButtonPositionY
---<**ubpy**>
---@param data integer
function W3TDefinition:setButtonPositionY(data) end

---setButtonPositionX
---<**ubpx**>
---@param data integer
function W3TDefinition:setButtonPositionX(data) end
