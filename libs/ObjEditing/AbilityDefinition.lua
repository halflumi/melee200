---@class AbilityDefinition
local AbilityDefinition = {}
_G.AbilityDefinition = AbilityDefinition

---new
---@param id string
---@param superId string
---@return AbilityDefinition
function AbilityDefinition:new(id, superId) end

---setName
---<**anam**>
---@param value string
function AbilityDefinition:setName(value) end

---setEditorSuffix
---<**ansf**>
---@param value string
function AbilityDefinition:setEditorSuffix(value) end

---setHeroAbility
---<**aher**>
---@param value boolean
function AbilityDefinition:setHeroAbility(value) end

---setItemAbility
---<**aite**>
---@param value boolean
function AbilityDefinition:setItemAbility(value) end

---setRace
---<**arac**>
---@param rce Race
function AbilityDefinition:setRace(rce) end

---setButtonPositionNormalX
---<**abpx**>
---@param value integer
function AbilityDefinition:setButtonPositionNormalX(value) end

---setButtonPositionNormalY
---<**abpy**>
---@param value integer
function AbilityDefinition:setButtonPositionNormalY(value) end

---setButtonPositionTurnOffX
---<**aubx**>
---@param value integer
function AbilityDefinition:setButtonPositionTurnOffX(value) end

---setButtonPositionTurnOffY
---<**auby**>
---@param value integer
function AbilityDefinition:setButtonPositionTurnOffY(value) end

---setButtonPositionResearchX
---<**arpx**>
---@param value integer
function AbilityDefinition:setButtonPositionResearchX(value) end

---setButtonPositionResearchY
---<**arpy**>
---@param value integer
function AbilityDefinition:setButtonPositionResearchY(value) end

---setIconNormal
---<**aart**>
---@param value string
function AbilityDefinition:setIconNormal(value) end

---setIconTurnOff
---<**auar**>
---@param value string
function AbilityDefinition:setIconTurnOff(value) end

---setIconResearch
---<**arar**>
---@param value string
function AbilityDefinition:setIconResearch(value) end

---setArtCaster
---<**acat**>
---@param value string
function AbilityDefinition:setArtCaster(value) end

---setArtTarget
---<**atat**>
---@param value string
function AbilityDefinition:setArtTarget(value) end

---setArtSpecial
---<**asat**>
---@param value string
function AbilityDefinition:setArtSpecial(value) end

---setArtEffect
---<**aeat**>
---@param value string
function AbilityDefinition:setArtEffect(value) end

---setAreaEffect
---<**aaea**>
---@param value string
function AbilityDefinition:setAreaEffect(value) end

---setLightningEffects
---<**alig**>
---@param value string
function AbilityDefinition:setLightningEffects(value) end

---setMissileArt
---<**amat**>
---@param value string
function AbilityDefinition:setMissileArt(value) end

---setMissileSpeed
---<**amsp**>
---@param value integer
function AbilityDefinition:setMissileSpeed(value) end

---setMissileArc
---<**amac**>
---@param value float
function AbilityDefinition:setMissileArc(value) end

---setMissileHomingEnabled
---<**amho**>
---@param value boolean
function AbilityDefinition:setMissileHomingEnabled(value) end

---setTargetAttachments
---<**atac**>
---@param value integer
function AbilityDefinition:setTargetAttachments(value) end

---setTargetAttachmentPoint
---<**ata0**>
---@param value string
function AbilityDefinition:setTargetAttachmentPoint(value) end

---setTargetAttachmentPoint1
---<**ata1**>
---@param value string
function AbilityDefinition:setTargetAttachmentPoint1(value) end

---setTargetAttachmentPoint2
---<**ata2**>
---@param value string
function AbilityDefinition:setTargetAttachmentPoint2(value) end

---setTargetAttachmentPoint3
---<**ata3**>
---@param value string
function AbilityDefinition:setTargetAttachmentPoint3(value) end

---setTargetAttachmentPoint4
---<**ata4**>
---@param value string
function AbilityDefinition:setTargetAttachmentPoint4(value) end

---setTargetAttachmentPoint5
---<**ata5**>
---@param value string
function AbilityDefinition:setTargetAttachmentPoint5(value) end

---setCasterAttachments
---<**acac**>
---@param value integer
function AbilityDefinition:setCasterAttachments(value) end

---setCasterAttachmentPoint
---<**acap**>
---@param value string
function AbilityDefinition:setCasterAttachmentPoint(value) end

---setCasterAttachmentPoint1
---<**aca1**>
---@param value string
function AbilityDefinition:setCasterAttachmentPoint1(value) end

---setSpecialAttachmentPoint
---<**aspt**>
---@param value string
function AbilityDefinition:setSpecialAttachmentPoint(value) end

---setAnimationNames
---<**aani**>
---@param value string
function AbilityDefinition:setAnimationNames(value) end

---setTooltipNormal
---<**atp1**>
---@param level integer
---@param value string
function AbilityDefinition:setTooltipNormal(level, value) end

---setTooltipTurnOff
---<**aut1**>
---@param level integer
---@param value string
function AbilityDefinition:setTooltipTurnOff(level, value) end

---setTooltipNormalExtended
---<**aub1**>
---@param level integer
---@param value string
function AbilityDefinition:setTooltipNormalExtended(level, value) end

---setTooltipTurnOffExtended
---<**auu1**>
---@param level integer
---@param value string
function AbilityDefinition:setTooltipTurnOffExtended(level, value) end

---setTooltipLearn
---<**aret**>
---@param value string
function AbilityDefinition:setTooltipLearn(value) end

---setTooltipLearnExtended
---<**arut**>
---@param value string
function AbilityDefinition:setTooltipLearnExtended(value) end

---setHotkeyLearn
---<**arhk**>
---@param value string
function AbilityDefinition:setHotkeyLearn(value) end

---setHotkeyNormal
---<**ahky**>
---@param value string
function AbilityDefinition:setHotkeyNormal(value) end

---setHotkeyTurnOff
---<**auhk**>
---@param value string
function AbilityDefinition:setHotkeyTurnOff(value) end

---setRequirements
---<**areq**>
---@param value string
function AbilityDefinition:setRequirements(value) end

---setRequirementsLevels
---<**arqa**>
---@param value string
function AbilityDefinition:setRequirementsLevels(value) end

---setCheckDependencies
---<**achd**>
---@param value boolean
function AbilityDefinition:setCheckDependencies(value) end

---setPriorityforSpellSteal
---<**apri**>
---@param value integer
function AbilityDefinition:setPriorityforSpellSteal(value) end

---setOrderStringUseTurnOn
---<**aord**>
---@param value string
function AbilityDefinition:setOrderStringUseTurnOn(value) end

---setOrderStringTurnOff
---<**aoru**>
---@param value string
function AbilityDefinition:setOrderStringTurnOff(value) end

---setOrderStringActivate
---<**aoro**>
---@param value string
function AbilityDefinition:setOrderStringActivate(value) end

---setOrderStringDeactivate
---<**aorf**>
---@param value string
function AbilityDefinition:setOrderStringDeactivate(value) end

---setEffectSound
---<**aefs**>
---@param value string
function AbilityDefinition:setEffectSound(value) end

---setEffectSoundLooping
---<**aefl**>
---@param value string
function AbilityDefinition:setEffectSoundLooping(value) end

---setLevels
---<**alev**>
---@param value integer
function AbilityDefinition:setLevels(value) end

---setRequiredLevel
---<**arlv**>
---@param value integer
function AbilityDefinition:setRequiredLevel(value) end

---setLevelSkipRequirement
---<**alsk**>
---@param value integer
function AbilityDefinition:setLevelSkipRequirement(value) end

---setTargetsAllowed
---<**atar**>
---@param level integer
---@param value string
function AbilityDefinition:setTargetsAllowed(level, value) end

---setCastingTime
---<**acas**>
---@param level integer
---@param value float
function AbilityDefinition:setCastingTime(level, value) end

---setDurationNormal
---<**adur**>
---@param level integer
---@param value float
function AbilityDefinition:setDurationNormal(level, value) end

---setDurationHero
---<**ahdu**>
---@param level integer
---@param value float
function AbilityDefinition:setDurationHero(level, value) end

---setCooldown
---<**acdn**>
---@param level integer
---@param value float
function AbilityDefinition:setCooldown(level, value) end

---setManaCost
---<**amcs**>
---@param level integer
---@param value integer
function AbilityDefinition:setManaCost(level, value) end

---setAreaofEffect
---<**aare**>
---@param level integer
---@param value float
function AbilityDefinition:setAreaofEffect(level, value) end

---setCastRange
---<**aran**>
---@param level integer
---@param value float
function AbilityDefinition:setCastRange(level, value) end

---setBuffs
---<**abuf**>
---@param level integer
---@param value string
function AbilityDefinition:setBuffs(level, value) end

---setEffects
---<**aeff**>
---@param level integer
---@param value string
function AbilityDefinition:setEffects(level, value) end
