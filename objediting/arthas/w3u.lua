local u = HeroDefinition:new(UID.ARTHAS, "Harf")
u:applyMeleeStats(Race.Human)
u:setDefenseBase(2)
u:setHeroAbilities(CommaString(
    AID.AREA_HOLY_LIGHT,
    AID.RESONATING_BLADE,
    AID.KING_STRIDE_AURA,
    AID.FROST_BLAST)
)
u:setNormalAbilities(CommaString("AInv", AID.PLOT_ARMOR))
u:setButtonPositionX(2)
u:setButtonPositionY(2)
u:setHotkey("A")
u:setTooltipBasic("Summon |cffffcc00A|rrthas")
u:setTooltipRevive("Revive |cffffcc00A|rrthas")
u:setTooltipExtended(
    "Warrior Hero, exceptional at defense and augmenting nearby friendly troops. Can learn Area Holy Light, Resonating Blade, King Stride Aura and Frost Blast." ..
    "|n" ..
    "|n|cffffcc00Attacks land units.|r"
)
