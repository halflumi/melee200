local a

-- Spiritual Fire Ball
a = AbilityDefinition:new(AID.SPIRITUAL_FIRE_BALL, "Amgl")
a:setAreaofEffect(1, SPIRITUAL_FIRE_BALL.FEEDBACK)
a:setButtonPositionNormalY(1)
a:setCheckDependencies(false)
a:setIconNormal(SPIRITUAL_FIRE_BALL.ICON)
a:setToolTips(SPIRITUAL_FIRE_BALL.TOOLTIPS)


-- Mana Ward
a = AbilityDefinitionIllidanChannel:new(AID.MANA_WARD)
a:setLevels(MANA_WARD.MAX_LEVEL)
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(2)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(2)
a:setHotkeyLearn("E")
a:setHotkeyNormal("E")
a:setIconNormal(MANA_WARD.ICON)
a:setIconResearch(MANA_WARD.ICON)
a:setToolTips(MANA_WARD.TOOLTIPS, MANA_WARD.MAX_LEVEL)
for i = 1, MANA_WARD.MAX_LEVEL do
    a:setAreaofEffect(i, MANA_WARD.AOE(i))
    a:setBaseOrderID(i, "chemicalrage")
    a:setCastRange(i, MANA_WARD.CAST_RANGE)
    a:setCooldown(i, MANA_WARD.CD)
    a:setDisableOtherAbilities(i, false)
    a:setDurationNormal(i, MANA_WARD.REGEN(i)) -- For tooltips.
    a:setFollowThroughTime(i, 2.4)
    a:setManaCost(i, MANA_WARD.COST)
    a:setOptions(i, 3)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionHealingWard:new(AID.MANA_WARD_SUMMON)
a:setLevels(MANA_WARD.MAX_LEVEL)
a:setCheckDependencies(false)
for i = 1, MANA_WARD.MAX_LEVEL do
    a:setBuffs(i, BID.MANA_WARD)
    a:setCastRange(i, 1000000000.0)
    a:setDurationHero(i, MANA_WARD.DURATION(i))
    a:setDurationNormal(i, MANA_WARD.DURATION(i))
    a:setWardUnitType(i, UID.MANA_WARD[i])

    local w = AbilityDefinitionNeutralRegenmanaonly:new(AID.MANA_WARD_REGEN[i])
    w:setAmountRegenerated(1, MANA_WARD.REGEN(i))
    w:setAreaofEffect(1, MANA_WARD.AOE(i))
    w:setPercentage(1, false)
end


-- Summon Blood Elemental
a = AbilityDefinitionArchMageSummonWaterElemental:new(AID.SUMMON_BLOOD_ELEMENTAL)
a:setLevels(BLOOD_ELEMENTAL.MAX_LEVEL)
a:setIconNormal(BLOOD_ELEMENTAL.ICON)
a:setIconResearch(BLOOD_ELEMENTAL.ICON)
a:setToolTips(BLOOD_ELEMENTAL.TOOLTIPS, BLOOD_ELEMENTAL.MAX_LEVEL)
for i = 1, BLOOD_ELEMENTAL.MAX_LEVEL do
    a:setBuffs(i, BID.BLOOD_ELEMENTAL)
    a:setCooldown(i, BLOOD_ELEMENTAL.CD)
    a:setDurationHero(i, BLOOD_ELEMENTAL.DURATION(i))
    a:setDurationNormal(i, BLOOD_ELEMENTAL.DURATION(i))
    a:setManaCost(i, BLOOD_ELEMENTAL.COST(i))
    a:setSummonedUnitType(i, UID.BLOOD_ELEMENTAL[i])
end

a = AbilityDefinitionIllidanChannel:new(AID.BLOOD_ELEMENTAL_RAGE)
a:setLevels(1)
a:setAnimationNames("attack")
a:setAreaofEffect(1, BLOOD_ELEMENTAL.RAGE_COST) -- For tooltips/triggers.
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setBaseOrderID(1, "charm")
a:setButtonPositionNormalX(0)
a:setButtonPositionNormalY(2)
a:setCastRange(1, 0.0)
a:setCooldown(1, 3.0)
a:setDisableOtherAbilities(1, false)
a:setFollowThroughTime(1, 0.6)
a:setHotkeyNormal("R")
a:setIconNormal(BLOOD_ELEMENTAL.RAGE_ICON)
a:setIconResearch(BLOOD_ELEMENTAL.RAGE_ICON)
a:setOptions(1, 1)
a:setToolTips(BLOOD_ELEMENTAL.RAGE_TOOLTIPS)

a = AbilityDefinitionUnholyFrenzy:new(AID.BLOOD_ELEMENTAL_RAGE_ACTUAL)
a:setAttackSpeedBonus(1, BLOOD_ELEMENTAL.RAGE_BONUS)
a:setBuffs(1, BID.BLOOD_ELEMENTAL_RAGE)
a:setCheckDependencies(false)
a:setDamageperSecond(1, 0)
a:setDurationNormal(1, BLOOD_ELEMENTAL.RAGE_DURATION)
a:setIconNormal(BLOOD_ELEMENTAL.RAGE_ICON)


-- Frost Storm
a = AbilityDefinitionArchMageBlizzard:new(AID.FROST_STORM)
a:setLevels(FROST_STORM.MAX_LEVEL)
a:setHotkeyLearn("Q")
a:setHotkeyNormal("Q")
a:setIconNormal(FROST_STORM.ICON)
a:setIconResearch(FROST_STORM.ICON)
a:setToolTips(FROST_STORM.TOOLTIPS, FROST_STORM.MAX_LEVEL)
for i = 1, FROST_STORM.MAX_LEVEL do
    a:setAreaofEffect(i, FROST_STORM.AOE(i))
    a:setBuildingReduction(i, 1.0)
    a:setCooldown(i, FROST_STORM.CD)
    a:setCastRange(i, FROST_STORM.CAST_RANGE)
    a:setDamage(i, FROST_STORM.DMG(i))
    a:setEffects(i, BID.FROST_STORM)
    a:setManaCost(i, FROST_STORM.COST)
    a:setMaximumDamageperWave(i, 0)
    a:setNumberofShards(i, 3)
    a:setNumberofWaves(i, FROST_STORM.WAVES(i))
    a:setTargetsAllowed(i, "enemy")
end


-- Mass Recall
a = AbilityDefinitionIllidanChannel:new(AID.MASS_RECALL)
a:setLevels(MASS_RECALL.MAX_LEVEL)
a:setRequiredLevel(6)
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(3)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(3)
a:setHotkeyLearn("R")
a:setHotkeyNormal("R")
a:setIconNormal(MASS_RECALL.ICON)
a:setIconResearch(MASS_RECALL.ICON)
a:setToolTips(MASS_RECALL.TOOLTIPS, MASS_RECALL.MAX_LEVEL)
for i = 1, MANA_WARD.MAX_LEVEL do
    a:setAreaofEffect(i, MASS_RECALL.AOE(i))
    a:setBaseOrderID(i, "channel")
    a:setCastRange(i, 1000000000.0)
    a:setCooldown(i, MASS_RECALL.CD)
    a:setDisableOtherAbilities(i, false)
    a:setDurationNormal(i, MASS_RECALL.UNITS(i)) -- For tooltips/triggers.
    a:setFollowThroughTime(i, 2.4)
    a:setManaCost(i, MASS_RECALL.COST(i))
    a:setOptions(i, 3)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionInnerFire:new(AID.MASS_RECALL_FORTITUDE)
a:setBuffs(1, BID.MASS_RECALL_FORTITUDE)
a:setCastRange(1, 1000000000.0)
a:setCheckDependencies(false)
a:setCooldown(1, 0)
a:setDamageIncrease(1, 0)
a:setDefenseIncrease(1, MASS_RECALL.FORTI_DEF)
a:setDurationHero(1, MASS_RECALL.FORTI_DUR)
a:setDurationNormal(1, MASS_RECALL.FORTI_DUR)
a:setEffectSound("")
a:setTargetsAllowed(1, "ground,air,vuln,invu")
