local u

-- Furion
u = HeroDefinition:new(UID.FURION, "Emfr")
u:setBuildTime(55)
u:setButtonPositionX(1)
u:setButtonPositionY(2)
u:setFoodCost(5)
u:setFormationRank(2)
u:setHotkey("K")
u:setHeroAbilities(CommaString(
    AID.MASS_ENTANGLING_ROOTS,
    AID.ARMY_OF_NATURE,
    AID.PROTECTION_OF_NATURE,
    AID.ANCESTRAL_REINCARNATION)
)
u:setNormalAbilities(CommaString("AInv,Ault", AID.NATURE_AFFINITY))
u:setLumberCost(100)
u:setManaInitialAmount(100)
u:setRepairLumberCost(100)
u:setRepairTime(55)
u:setRequierementsForTier(2, "etoa")
u:setRequierementsForTier(3, "etoe")
u:setRequierementsTiersUsed(3)
u:setScalingValue(1)
u:setSelectionScale(1.75)
u:setStartingStrength(16)
u:setTooltipBasic("Summon |cffffcc00K|reeper of the Grove")
u:setTooltipRevive("Revive |cffffcc00K|reeper of the Grove")
u:setTooltipExtended(
    "Mystical Hero, adept at using nature spells. Can learn Mass Entangling Roots, Army of Nature, Protection of Nature, and Ancient Incarnation." ..
    "|n" ..
    "|n|cffffcc00Attacks land and air units.|r"
)


-- Treants
u = BuildingAndHeroDefinition:new(UID.TREANT_MELEE, "efon")
u:setName("Treant of Life")
u:setAttack1DamageBase(ARMY_OF_NATURE.DMG_MELEE)
u:setDefenseBase(ARMY_OF_NATURE.DEF_MELEE)
u:setHitPointsMaximumBase(ARMY_OF_NATURE.HP_MELEE)
u:setIconGameInterface(ARMY_OF_NATURE.ICON_LIFE)
u:setModelFile(ARMY_OF_NATURE.MDX_LIFE)

u = BuildingAndHeroDefinition:new(UID.TREANT_RANGED, "efon")
u:setName("Treant of Lore")
u:setArmorType(ArmorType.Medium)
u:setAttack1AttackType(AttackType.Magic)
u:setAttack1DamageBase(ARMY_OF_NATURE.DMG_RANGED)
u:setAttack1ProjectileArt(ARMY_OF_NATURE.MDX_PROJ)
u:setAttack1ProjectileHomingEnabled(true)
u:setAttack1ProjectileSpeed(900)
u:setAttack1Range(ARMY_OF_NATURE.ATK_RANGE)
u:setAttack1TargetsAllowed("ground,air,structure,debris,item,ward")
u:setAttack1WeaponSound(WeaponSound.Nothing)
u:setAttack1WeaponType(WeaponType.Missile)
u:setDefenseBase(ARMY_OF_NATURE.DEF_RANGED)
u:setHitPointsMaximumBase(ARMY_OF_NATURE.HP_RANGED)
u:setIconGameInterface(ARMY_OF_NATURE.ICON_LORE)
u:setModelFile(ARMY_OF_NATURE.MDX_LORE)


-- Ancient of mana
for lv, id in ipairs(UID.ANCIENT_OF_MANA) do
    u = BuildingAndHeroDefinition:new(id, "osw1")
    u:setName("Ancient of Mana")
    u:setArmorSoundType(ArmorSoundType.Wood)
    u:setAttack1DamageBase(ANCIENT_REINCARNATION.ATK(lv))
    u:setAttack1DamageSidesperDie(ANCIENT_REINCARNATION.ATK_DICE)
    u:setAttack2AnimationBackswingPoint(0.64)
    u:setAttack2AnimationDamagePoint(0.33)
    u:setAttack2AttackType(AttackType.Magic)
    u:setAttack2CooldownTime(1.0)
    u:setAttack2DamageBase(ANCIENT_REINCARNATION.ATK(lv))
    u:setAttack2DamageNumberofDice(1)
    u:setAttack2DamageSidesperDie(ANCIENT_REINCARNATION.ATK_DICE)
    u:setAttack2ProjectileArc(0.1)
    u:setAttack2ProjectileArt([[Abilities\Weapons\KeeperGroveMissile\KeeperGroveMissile.mdl]])
    u:setAttack2ProjectileHomingEnabled(true)
    u:setAttack2ProjectileSpeed(900)
    u:setAttack2Range(ANCIENT_REINCARNATION.ANTI_AIR_RANGE)
    u:setAttack2TargetsAllowed("ground,air,structure,debris,item,ward")
    u:setAttack2WeaponSound(WeaponSound.Nothing)
    u:setAttack2WeaponType(WeaponType.Missile)
    u:setAttacksEnabled(3)
    u:setCollisionSize(48)
    u:setDefenseBase(ANCIENT_REINCARNATION.DEF(lv))
    u:setHitPointsMaximumBase(ANCIENT_REINCARNATION.HP(lv))
    u:setHitPointsRegenerationRate(0)
    u:setIconGameInterface(ANCIENT_REINCARNATION.ICON)
    u:setManaInitialAmount(ANCIENT_REINCARNATION.MP(lv))
    u:setManaMaximum(ANCIENT_REINCARNATION.MP(lv))
    u:setModelFile(ANCIENT_REINCARNATION.MDX)
    u:setScalingValue(ANCIENT_REINCARNATION.SCALE(lv))
    u:setSelectionScale(ANCIENT_REINCARNATION.SCALE(lv) + 1.25)
    u:setShadowImageCenterX(105)
    u:setShadowImageCenterY(105)
    u:setShadowImageHeight(230)
    u:setShadowImageWidth(230)
    u:setSpeedBase(ANCIENT_REINCARNATION.SPEED)
    u:setUnitSoundSet("AncientOfWind")

    local a = CommaString(AID.POWER_OF_NATURE, AID.RADIANT_ENERGY)
    if (lv == 2) then
        a = CommaString(a, AID.WRATH_OF_NATURE)
    end
    u:setNormalAbilities(a)
end
