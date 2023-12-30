local b

b = BuffDefinition:new(BID.RESONATING_BLADE, "BNab")
b:setArtTarget(1, "")
b:setIconNormal(1, RESONATING_BLADE.ICON)
b:setTooltipNormal(1, "Resonating Blade")
b:setTooltipNormalExtended(1, "Frostmourne is devouring souls.")

b = BuffDefinition:new(BID.KING_STRIDE_AURA_DEF, "BHad")
b:setIconNormal(1, KING_STRIDE_AURA.ICON)
b:setTooltipNormal(1, "King Stride Aura")
b:setTooltipNormalExtended(1, "This unit is under the effects of King Stride Aura; it has increased armor.")

b = BuffDefinition:new(BID.KING_STRIDE_AURA_ATK, "BHad")
b:setArtTarget(1, "")
b:setIconNormal(1, KING_STRIDE_AURA.ICON)
b:setTooltipNormal(1, "King Stride Aura")
b:setTooltipNormalExtended(1, "This unit is under the effects of King Stride Aura; it has increased attack damage.")

b = BuffDefinition:new(BID.PLOT_ARMOR, "BHds")
b:setArtTarget(1, PLOT_ARMOR.MDX)
b:setIconNormal(1, [[ReplaceableTextures\CommandButtons\BTNArthas.tga]])
b:setTooltipNormal(1, "Plot Armor")
b:setTooltipNormalExtended(1, "This unit is protected by Plot Armor; it's immune against all forms of damage.")
