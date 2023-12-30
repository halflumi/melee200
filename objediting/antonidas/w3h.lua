local b

b = BuffDefinition:new(BID.MANA_WARD, "Barm")
b:setTooltipNormal(1, "Mana Ward")

b = BuffDefinition:new(BID.BLOOD_ELEMENTAL, "BHwe")
b:setTooltipNormal(1, "Blood Elemental")

b = BuffDefinition:new(BID.BLOOD_ELEMENTAL_RAGE, "Buhf")
b:setArtTarget(1, BLOOD_ELEMENTAL.MDX_RAGE)
b:setIconNormal(1, BLOOD_ELEMENTAL.RAGE_ICON)
b:setTooltipNormal(1, "Rage")
b:setTooltipNormalExtended(1, "This unit is in a rage; its attack rate is increased.")

b = BuffDefinition:new(BID.FROST_STORM, "XHbz")
b:setEffect(1, FROST_STORM.MDX)
b:setEffectSoundLooping(1, "")

b = BuffDefinition:new(BID.MASS_RECALL_FORTITUDE, "BHds")
b:setArtTarget(1, MASS_RECALL.MDX)
b:setTargetAttachmentPoint0(1, "origin")
b:setIconNormal(1, MASS_RECALL.ICON)
b:setTooltipNormal(1, "Mass Recall")
b:setTooltipNormalExtended(1, "This unit is fortified by the recall; it has increased armor.")
