local b

b = BuffDefinition:new(BID.ARMY_OF_NATURE, "BEfn")
b:setTooltipNormal(1, "Army of Nature")

b = BuffDefinition:new(BID.PROTECTION_OF_NATURE, "Brej")
b:setArtTarget(1, PROTECTION_OF_NATURE.MDX)
b:setIconNormal(1, PROTECTION_OF_NATURE.ICON)
b:setTooltipNormal(1, "Protection of Nature")
b:setTooltipNormalExtended(1,
    "This unit is under Protection of Nature; it has increased armor and is healing hit points over time."
)

b = BuffDefinition:new(BID.RADIANT_ENERGY, "BUau")
b:setArtTarget(1, ANCIENT_REINCARNATION.MDX_AURA_BUFF)
b:setIconNormal(1, ANCIENT_REINCARNATION.ICON_AURA_BUFF)
b:setTooltipNormal(1, "Radiant Energy")
b:setTooltipNormalExtended(1,
    "This unit has Radiant Energy; it has increased hit point regeneration."
)

b = BuffDefinition:new(BID.WRATH_OF_NATURE, "Broa")
b:setArtTarget(1, ANCIENT_REINCARNATION.MDX_ROAR_BUFF)
b:setTargetAttachmentPoint0(1, "chest")
b:setIconNormal(1, ANCIENT_REINCARNATION.ICON_ROAR)
b:setTooltipNormal(1, "Wrath of Nature")
b:setTooltipNormalExtended(1,
    "This unit has Wrath of Nature; its attack damage has been increased."
)

b = BuffDefinition:new(BID.NATURE_AFFINITY, "BUau")
b:setIconNormal(1, NATURE_AFFINITY.ICON_BUFF)
b:setTooltipNormal(1, "Nature Affinity")
b:setTooltipNormalExtended(1,
    "This unit has Nature Affinity; it has increased hit point and mana point regeneration."
)
