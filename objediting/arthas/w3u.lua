local u = HeroDefinition:new(UID.ARTHAS, "Harf")
u:setButtonPositionX(2)
u:setButtonPositionY(2)
u:setFoodCost(5)
u:setHeroAbilities(CommaString(
    AID.AREA_HOLY_LIGHT,
    AID.RESONATING_BLADE,
    AID.KING_STRIDE_AURA,
    AID.FROST_BLAST)
)
u:setHotkey("A")
u:setNormalAbilities(CommaString("AInv", AID.PLOT_ARMOR))
u:setRequierementsForTier(2, "hkee")
u:setRequierementsForTier(3, "hcas")
u:setRequierementsTiersUsed(3)
u:setTooltipBasic("Summon |cffffcc00A|rrthas")
u:setTooltipRevive("Revive |cffffcc00A|rrthas")
u:setTooltipExtended(
    "Warrior Hero, exceptional at defense and augmenting nearby friendly troops. Can learn Area Holy Light, Resonating Blade, King Stride Aura and Frost Blast." ..
    "|n" ..
    "|n|cffffcc00Attacks land units.|r"
)
