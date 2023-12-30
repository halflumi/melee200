---@class BuffDefinition
BuffDefinition = {}
_G.BuffDefinition = BuffDefinition

---new
---@param id string
---@param superId string
---@return BuffDefinition
function BuffDefinition:new(id, superId) end

---setName
---<**fnam**>
---@param level integer
---@param value string
function BuffDefinition:setName(level, value) end

---setEditorSuffix
---<**fnsf**>
---@param level integer
---@param value string
function BuffDefinition:setEditorSuffix(level, value) end

---setRace
---<**frac**>
---@param level integer
---@param value string
function BuffDefinition:setRace(level, value) end

---setIconNormal
---<**fart**>
---@param level integer
---@param value string
function BuffDefinition:setIconNormal(level, value) end

---setCaster
---<**fcat**>
---@param level integer
---@param value string
function BuffDefinition:setCaster(level, value) end

---setTarget
---<**ftat**>
---@param level integer
---@param value string
function BuffDefinition:setTarget(level, value) end

---setArtTarget
---<**ftat**>
---@param level integer
---@param value string
function BuffDefinition:setArtTarget(level, value) end

---setSpecial
---<**fsat**>
---@param level integer
---@param value string
function BuffDefinition:setSpecial(level, value) end

---setArtSpecial
---<**fsat**>
---@param level integer
---@param value string
function BuffDefinition:setArtSpecial(level, value) end

---setEffect
---<**feat**>
---@param level integer
---@param value string
function BuffDefinition:setEffect(level, value) end

---setAreaEffect
---<**faea**>
---@param level integer
---@param value string
function BuffDefinition:setAreaEffect(level, value) end

---setMissileArt
---<**fmat**>
---@param level integer
---@param value string
function BuffDefinition:setMissileArt(level, value) end

---setMissileSpeed
---<**fmsp**>
---@param level integer
---@param value integer
function BuffDefinition:setMissileSpeed(level, value) end

---setMissileArc
---<**fmac**>
---@param level integer
---@param value float
function BuffDefinition:setMissileArc(level, value) end

---setMissileHomingEnabled
---<**fmho**>
---@param level integer
---@param value boolean
function BuffDefinition:setMissileHomingEnabled(level, value) end

---setTargetAttachments
---<**ftac**>
---@param level integer
---@param value integer
function BuffDefinition:setTargetAttachments(level, value) end

---setTargetAttachmentPoint0
---<**fta0**>
---@param level integer
---@param value string
function BuffDefinition:setTargetAttachmentPoint0(level, value) end

---setTargetAttachmentPoint1
---<**fta1**>
---@param level integer
---@param value string
function BuffDefinition:setTargetAttachmentPoint1(level, value) end

---setTargetAttachmentPoint2
---<**fta2**>
---@param level integer
---@param value string
function BuffDefinition:setTargetAttachmentPoint2(level, value) end

---setTargetAttachmentPoint3
---<**fta3**>
---@param level integer
---@param value string
function BuffDefinition:setTargetAttachmentPoint3(level, value) end

---setTargetAttachmentPoint4
---<**fta4**>
---@param level integer
---@param value string
function BuffDefinition:setTargetAttachmentPoint4(level, value) end

---setTargetAttachmentPoint5
---<**fta5**>
---@param level integer
---@param value string
function BuffDefinition:setTargetAttachmentPoint5(level, value) end

---setCasterAttachments
---<**fcac**>
---@param level integer
---@param value integer
function BuffDefinition:setCasterAttachments(level, value) end

---setSpecialAttachmentPoint
---<**fspt**>
---@param level integer
---@param value string
function BuffDefinition:setSpecialAttachmentPoint(level, value) end

---setTooltipNormal
---<**ftip**>
---@param level integer
---@param value string
function BuffDefinition:setTooltipNormal(level, value) end

---setTooltipNormalExtended
---<**fube**>
---@param level integer
---@param value string
function BuffDefinition:setTooltipNormalExtended(level, value) end

---setEffectSound
---<**fefs**>
---@param level integer
---@param value string
function BuffDefinition:setEffectSound(level, value) end

---setEffectSoundLooping
---<**fefl**>
---@param level integer
---@param value string
function BuffDefinition:setEffectSoundLooping(level, value) end
