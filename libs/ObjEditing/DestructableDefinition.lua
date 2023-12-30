---@class DestructableDefinition: W3BDefinition
DestructableDefinition = {}
_G.DestructableDefinition = DestructableDefinition

---new
---@param id string
---@param superId string
---@return DestructableDefinition
function DestructableDefinition:new(id, superId) end

---setTexture
---@param data string
function DestructableDefinition:setTexture(data) end

---setTextureId
---@param data integer
function DestructableDefinition:setTextureId(data) end

---setCategory
---@param data string
function DestructableDefinition:setCategory(data) end

---setName
---@param data string
function DestructableDefinition:setName(data) end

---setPath
---@param data string
function DestructableDefinition:setPath(data) end

---setModel
---@param data string
function DestructableDefinition:setModel(data) end

---setSoundOnDestroy
---@param data string
function DestructableDefinition:setSoundOnDestroy(data) end
