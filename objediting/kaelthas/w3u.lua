local u

-- Kaelthas
u = HeroDefinition:new(UID.KAELTHAS, "Hblm")
u:setHeroAbilities(CommaString(AID.MASS_BANISH))
u:setNormalAbilities(CommaString("AInv,Asph"))
u:setIconGameInterface([[ReplaceableTextures\CommandButtons\BTNBloodMage2.blp]])
u:setModelFile([[Models\PrinceKaelThasTCV1.mdx]])
u:setProperNames("Kael")
u:setProperNamesUsed(1)
u:setUnitSoundSet("Kael")
u:setTooltipExtended(
    "Mystical Hero, adept at controlling magic and ranged assaults. Can learn Mass Banish." ..
    "|n" ..
    "|n|cffffcc00Attacks land and air units.|r"
)