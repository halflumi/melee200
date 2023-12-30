local a

-- Mass Entangling Roots
a = AbilityDefinitionIllidanChannel:new(AID.MASS_ENTANGLING_ROOTS)
a:setLevels(MASS_ENTANGLING_ROOTS.MAX_LEVEL)
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(0)
a:setButtonPositionNormalY(2)
a:setHotkeyLearn("Q")
a:setHotkeyNormal("Q")
a:setIconNormal([[ReplaceableTextures\CommandButtons\BTNEntanglingRoots.tga]])
a:setIconResearch([[ReplaceableTextures\CommandButtons\BTNEntanglingRoots.tga]])
a:setToolTips(MASS_ENTANGLING_ROOTS.TOOLTIPS, MASS_ENTANGLING_ROOTS.MAX_LEVEL)
for i = 1, AREA_HOLY_LIGHT.MAX_LEVEL do
    a:setAreaofEffect(i, MASS_ENTANGLING_ROOTS.AOE(i))
    a:setBaseOrderID(i, "channel")
    a:setCastRange(i, MASS_ENTANGLING_ROOTS.CAST_RANGE)
    a:setCooldown(i, MASS_ENTANGLING_ROOTS.CD)
    a:setDisableOtherAbilities(i, false)
    a:setFollowThroughTime(i, 1.02)
    a:setManaCost(i, MASS_ENTANGLING_ROOTS.COST(i))
    a:setOptions(i, 3)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionKeeperoftheGroveEntanglingRoots:new(AID.MASS_ENTANGLING_ROOTS_IMPL)
a:setLevels(MASS_ENTANGLING_ROOTS.MAX_LEVEL)
for i = 1, MASS_ENTANGLING_ROOTS.MAX_LEVEL do
    a:setCastRange(i, 1000000000.0)
    a:setCooldown(i, 0.0)
    a:setDamageperSecond(i, MASS_ENTANGLING_ROOTS.DMG(i))
    a:setDurationHero(i, MASS_ENTANGLING_ROOTS.DUR_HERO(i))
    a:setDurationNormal(i, MASS_ENTANGLING_ROOTS.DUR(i))
end


-- Army of Nature
a = AbilityDefinitionArchMageSummonWaterElemental:new(AID.ARMY_OF_NATURE)
a:setLevels(ARMY_OF_NATURE.MAX_LEVEL)
a:setIconNormal(ARMY_OF_NATURE.ICON_LORE)
a:setIconResearch(ARMY_OF_NATURE.ICON_LORE)
a:setToolTips(ARMY_OF_NATURE.TOOLTIPS, ARMY_OF_NATURE.MAX_LEVEL)
for i = 1, ARMY_OF_NATURE.MAX_LEVEL do
    a:setBuffs(i, BID.ARMY_OF_NATURE)
    a:setCooldown(i, ARMY_OF_NATURE.CD)
    a:setDurationHero(i, ARMY_OF_NATURE.DUR)
    a:setDurationNormal(i, ARMY_OF_NATURE.DUR)
    a:setManaCost(i, ARMY_OF_NATURE.COST(i))
    a:setSummonedUnitCount(i, ARMY_OF_NATURE.AMOUNT_MELEE(i))
    a:setSummonedUnitType(i, UID.TREANT_MELEE)
end

a = AbilityDefinitionArchMageSummonWaterElemental:new(AID.ARMY_OF_NATURE_CO_SUMMON)
a:setLevels(ARMY_OF_NATURE.MAX_LEVEL)
for i = 1, ARMY_OF_NATURE.MAX_LEVEL do
    a:setBuffs(i, BID.ARMY_OF_NATURE)
    a:setDurationHero(i, ARMY_OF_NATURE.DUR)
    a:setDurationNormal(i, ARMY_OF_NATURE.DUR)
    a:setSummonedUnitCount(i, ARMY_OF_NATURE.AMOUNT_RANGED(i))
    a:setSummonedUnitType(i, UID.TREANT_RANGED)
end


-- Protection of Nature
a = AbilityDefinitionIllidanChannel:new(AID.PROTECTION_OF_NATURE)
a:setLevels(PROTECTION_OF_NATURE.MAX_LEVEL)
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(2)
a:setButtonPositionNormalY(2)
a:setHotkeyLearn("E")
a:setHotkeyNormal("E")
a:setIconNormal(PROTECTION_OF_NATURE.ICON)
a:setIconResearch(PROTECTION_OF_NATURE.ICON)
a:setToolTips(PROTECTION_OF_NATURE.TOOLTIPS, PROTECTION_OF_NATURE.MAX_LEVEL)
for i = 1, AREA_HOLY_LIGHT.MAX_LEVEL do
    a:setBaseOrderID(i, "chemicalrage")
    a:setCastRange(i, PROTECTION_OF_NATURE.CAST_RANGE)
    a:setCooldown(i, PROTECTION_OF_NATURE.CD)
    a:setDisableOtherAbilities(i, false)
    a:setFollowThroughTime(i, 1.02)
    a:setManaCost(i, PROTECTION_OF_NATURE.COST(i))
    a:setOptions(i, 1)
    a:setTargetType(i, 1)
end

a = AbilityDefinitionInnerFire:new(AID.PROTECTION_OF_NATURE_IMPL)
a:setLevels(PROTECTION_OF_NATURE.MAX_LEVEL)
a:setCheckDependencies(false)
for i = 1, PROTECTION_OF_NATURE.MAX_LEVEL do
    a:setBuffs(i, BID.PROTECTION_OF_NATURE)
    a:setDamageIncrease(i, 0)
    a:setDefenseIncrease(i, PROTECTION_OF_NATURE.DEF(i))
    a:setDurationHero(i, PROTECTION_OF_NATURE.DUR(i))
    a:setDurationNormal(i, PROTECTION_OF_NATURE.DUR(i))
    a:setLifeRegenRate(i, PROTECTION_OF_NATURE.REGEN(i))
end


-- Ancient Incarnation
a = AbilityDefinitionKeeperoftheGroveForceofNature:new(AID.ANCESTRAL_REINCARNATION)
a:setLevels(ANCIENT_REINCARNATION.MAX_LEVEL)
a:setRequiredLevel(6)
a:setArtSpecial("")
a:setButtonPositionNormalX(3)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(3)
a:setHotkeyLearn("R")
a:setHotkeyNormal("R")
a:setIconNormal(ANCIENT_REINCARNATION.ICON)
a:setIconResearch(ANCIENT_REINCARNATION.ICON)
a:setToolTips(ANCIENT_REINCARNATION.TOOLTIPS, ANCIENT_REINCARNATION.MAX_LEVEL)
for i = 1, ANCIENT_REINCARNATION.MAX_LEVEL do
    a:setAreaofEffect(i, ANCIENT_REINCARNATION.AOE)
    a:setCastRange(i, ANCIENT_REINCARNATION.CAST_RANGE)
    a:setCooldown(i, ANCIENT_REINCARNATION.CD)
    a:setDurationHero(i, ANCIENT_REINCARNATION.MP_LOSS_PER_SEC) -- For tooltips/triggers.
    a:setDurationNormal(i, ANCIENT_REINCARNATION.HP_LOSS_PER_SEC) -- For tooltips/triggers.
    a:setEffects(i, "")
    a:setManaCost(i, ANCIENT_REINCARNATION.COST(i))
    a:setNumberofSummonedUnits(i, 0)
end

a = AbilityDefinition:new(AID.POWER_OF_NATURE, "Amgl")
a:setLevels(ANCIENT_REINCARNATION.PAS_MAX_LEVEL)
a:setButtonPositionNormalY(1)
a:setCheckDependencies(false)
a:setIconNormal(ANCIENT_REINCARNATION.ICON_PAS)
a:setToolTips(ANCIENT_REINCARNATION.TOOLTIPS_PAS, ANCIENT_REINCARNATION.PAS_MAX_LEVEL)
for i = 1, ANCIENT_REINCARNATION.PAS_MAX_LEVEL do
    a:setAreaofEffect(i, ANCIENT_REINCARNATION.PAS_HP_BONUS) -- For tooltips/triggers.
end

a = AbilityDefinitionDeathKnightUnholyAura:new(AID.RADIANT_ENERGY)
a:setAreaofEffect(1, ANCIENT_REINCARNATION.AURA_AOE)
a:setArtTarget(ANCIENT_REINCARNATION.MDX_AURA)
a:setBuffs(1, BID.RADIANT_ENERGY)
a:setButtonPositionNormalX(0)
a:setButtonPositionNormalY(2)
a:setIconNormal(ANCIENT_REINCARNATION.ICON_AURA)
a:setLifeRegenerationIncrease(1, ANCIENT_REINCARNATION.AURA_REGEN)
a:setMovementSpeedIncrease(1, 0)
a:setPercentBonus(1, false)
a:setTargetsAllowed(1, "air,ground,friend,vuln,invu")
a:setToolTips(ANCIENT_REINCARNATION.TOOLTIPS_AURA)

a = AbilityDefinitionRoar:new(AID.WRATH_OF_NATURE)
a:setAreaofEffect(1, ANCIENT_REINCARNATION.ROAR_AOE)
a:setArtCaster(ANCIENT_REINCARNATION.MDX_ROAR)
a:setBuffs(1, BID.WRATH_OF_NATURE)
a:setButtonPositionNormalX(1)
a:setButtonPositionNormalY(2)
a:setCheckDependencies(false)
a:setCooldown(1, 0)
a:setDamageIncrease(1, ANCIENT_REINCARNATION.ROAR_ATK)
a:setDurationHero(1, ANCIENT_REINCARNATION.ROAR_DUR)
a:setDurationNormal(1, ANCIENT_REINCARNATION.ROAR_DUR)
a:setHotkeyNormal("W")
a:setIconNormal(ANCIENT_REINCARNATION.ICON_ROAR)
a:setManaCost(1, ANCIENT_REINCARNATION.ROAR_COST)
a:setTargetsAllowed(1, "air,ground,friend,vuln,invu")
a:setToolTips(ANCIENT_REINCARNATION.TOOLTIPS_ROAR)


-- Nature Affinity
a = AbilityDefinition:new(AID.NATURE_AFFINITY, "Amgl")
a:setAreaofEffect(1, NATURE_AFFINITY.RANGE) -- For triggers.
a:setButtonPositionNormalY(1)
a:setCheckDependencies(false)
a:setIconNormal(NATURE_AFFINITY.ICON)
a:setToolTips(NATURE_AFFINITY.TOOLTIPS)

a = AbilityDefinitionDeathKnightUnholyAura:new(AID.NATURE_AFFINITY_LIFE)
a:setArtTarget(NATURE_AFFINITY.MDX)
a:setBuffs(1, BID.NATURE_AFFINITY)
a:setLifeRegenerationIncrease(1, NATURE_AFFINITY.REGEN)
a:setTargetsAllowed(1, "self")

a = AbilityDefinitionNeutralRegenmanaonly:new(AID.NATURE_AFFINITY_MANA)
a:setAmountRegenerated(1, NATURE_AFFINITY.REGEN / 2) -- Proc twice per second.
a:setPercentage(1, false)
a:setTargetsAllowed(1, "self")
