local u

-- Kaelthas
u = HeroDefinition:new(UID.KAELTHAS, "Hblm")
u:setHeroAbilities(CommaString(AID.FLOATING_CHAOS, AID.MASS_BANISH, AID.STEAL_MANA, AID.RAIN_OF_HELLFIRE))
u:setNormalAbilities(CommaString("AInv,Asph", AID.MANA_BREATHE))
u:setIconGameInterface([[ReplaceableTextures\CommandButtons\BTNBloodMage2.blp]])
u:setModelFile([[Models\PrinceKaelThasTCV1.mdx]])
u:setProperNames("Kael")
u:setProperNamesUsed(1)
u:setUnitSoundSet("Kael")
u:setTooltipExtended(
    "Mystical Hero, adept at controlling magic and ranged assaults. Can learn Floating Chaos, Mass Banish, Steal Mana and Rain of Hellfire." ..
    "|n" ..
    "|n|cffffcc00Attacks land and air units.|r"
)

-- Floating Chaos
u = UnitDefinition:new(UID.FLOATING_CHAOS, "ewsp")
u:setAnimationCastBackswing(0.0)
u:setArtSpecial("")
u:setCanFlee(false)
u:setCollisionSize(0.0)
u:setElevationSampleRadius(0.0)
u:setFoodCost(0)
u:setHasWaterShadow(false)
u:setManaInitialAmount(100000)
u:setManaMaximum(100000)
u:setMaximumPitchAngledegrees(0.0)
u:setMaximumRollAngledegrees(0.0)
u:setModelFile(FLOATING_CHAOS.MDX_FIREBALL)
u:setMovementHeight(80)
u:setMovementType(MovementType.Fly)
u:setNormalAbilities("Avul,Aloc")
u:setProjectileLaunchZ(160)
u:setScaleProjectiles(false)
u:setScalingValue(2)
u:setSightRadiusDay(FLOATING_CHAOS.RANGE)
u:setSightRadiusNight(FLOATING_CHAOS.RANGE)
u:setSpeedBase(0)
u:setTargetedAs("invulnerable")
u:setTurnRate(3.0)
