local a

-- Mass Banish
a = AbilityDefinitionIllidanChannel:new(AID.MASS_BANISH)
a:setLevels(MASS_BANISH.MAX_LEVEL)
a:setAnimationNames("spell")
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(1)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(1)
a:setHotkeyLearn("W")
a:setHotkeyNormal("W")
a:setIconNormal([[ReplaceableTextures\CommandButtons\BTNBanish.blp]])
a:setIconResearch([[ReplaceableTextures\CommandButtons\BTNBanish.blp]])
a:setToolTips(MASS_BANISH.TOOLTIPS, MASS_BANISH.MAX_LEVEL)
for i = 1, MASS_BANISH.MAX_LEVEL do
    a:setAreaofEffect(i, MASS_BANISH.AOE(i))
    a:setBaseOrderID(i, "channel")
    a:setCastRange(i, MASS_BANISH.CAST_RANGE)
    a:setCooldown(i, MASS_BANISH.CD)
    a:setDisableOtherAbilities(i, false)
    a:setFollowThroughTime(i, 1.1)
    a:setManaCost(i, MASS_BANISH.COST(i))
    a:setOptions(i, 3)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionBloodMageBanish:new(AID.MASS_BANISH_IMPL)
a:setLevels(MASS_BANISH.MAX_LEVEL)
for i = 1, MASS_BANISH.MAX_LEVEL do
    a:setCastRange(i, 1000000000.0)
    a:setCooldown(i, 0.0)
    a:setDurationHero(i, MASS_BANISH.DUR_HERO(i))
    a:setDurationNormal(i, MASS_BANISH.DUR(i))
    a:setMovementSpeedReduction(i, 0.5)
end


-- Steal Mana
a = AbilityDefinitionManaSteal:new(AID.STEAL_MANA)
a:setLevels(STEAL_MANA.MAX_LEVEL)
a:setHeroAbility(true)
a:setItemAbility(false)
a:setButtonPositionNormalX(2)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(2)
a:setHotkeyLearn("E")
a:setHotkeyNormal("E")
a:setIconNormal(STEAL_MANA.ICON)
a:setIconResearch(STEAL_MANA.ICON)
a:setToolTips(STEAL_MANA.TOOLTIPS, STEAL_MANA.MAX_LEVEL)
for i = 1, STEAL_MANA.MAX_LEVEL do
    a:setCastRange(i, STEAL_MANA.CAST_RANGE)
    a:setCooldown(i, STEAL_MANA.CD(i))
    a:setLifeConvertedtoMana(i, STEAL_MANA.STEAL(i))
    a:setManaCost(i, STEAL_MANA.COST)
end


-- Mana Breathe
a = AbilityDefinitionBloodMageSiphonMana:new(AID.MANA_BREATHE)
a:setAreaofEffect(1, MANA_BREATHE.CAST_RANGE + 200)
a:setButtonPositionNormalX(1)
a:setButtonPositionNormalY(1)
a:setCastRange(1, MANA_BREATHE.CAST_RANGE)
a:setCooldown(1, MANA_BREATHE.CD)
a:setDrainIntervalseconds(1, 0.5)
a:setDurationHero(1, MANA_BREATHE.DUR)
a:setDurationNormal(1, MANA_BREATHE.DUR)
a:setHotkeyNormal("F")
a:setIconNormal(MANA_BREATHE.ICON)
a:setManaCost(1, MANA_BREATHE.COST)
a:setManaTransferredPerSecond(1, MANA_BREATHE.TARNS)
a:setTargetsAllowed(1, "friend,invu,organic,vuln")
a:setToolTips(MANA_BREATHE.TOOLTIPS)


-- Floating Chaos
a = AbilityDefinitionIllidanChannel:new(AID.FLOATING_CHAOS)
a:setLevels(FLOATING_CHAOS.MAX_LEVEL)
a:setAnimationNames("spell")
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(0)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(0)
a:setHotkeyLearn("Q")
a:setHotkeyNormal("Q")
a:setIconNormal(FLOATING_CHAOS.ICON)
a:setIconResearch(FLOATING_CHAOS.ICON)
a:setToolTips(FLOATING_CHAOS.TOOLTIPS, FLOATING_CHAOS.MAX_LEVEL)
for i = 1, FLOATING_CHAOS.MAX_LEVEL do
    a:setAreaofEffect(i, FLOATING_CHAOS.RANGE) -- For tooltips/triggers.
    a:setBaseOrderID(i, "chemicalrage")
    a:setCastRange(i, FLOATING_CHAOS.CAST_RANGE)
    a:setCooldown(i, FLOATING_CHAOS.CD)
    a:setDisableOtherAbilities(i, false)
    a:setDurationNormal(i, FLOATING_CHAOS.DUR(i))
    a:setFollowThroughTime(i, 1.1)
    a:setManaCost(i, FLOATING_CHAOS.COST)
    a:setOptions(i, 1)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionAlchemistAcidBomb:new(AID.FLOATING_CHAOS_ATK)
a:setLevels(FLOATING_CHAOS.MAX_LEVEL)
a:setMissileArc(0)
a:setMissileArt(FLOATING_CHAOS.MDX_PROJ)
a:setMissileSpeed(800)
for i = 1, FLOATING_CHAOS.MAX_LEVEL do
    a:setBuffs(i, BID.FLOATING_CHAOS)
    a:setAreaofEffect(i, 0)
    a:setArmorPenalty(i, 0)
    a:setCastRange(i, 1000000000.0)
    a:setCooldown(i, 0.0)
    a:setDamageInterval(i, 0.5)
    a:setDurationHero(i, 1)
    a:setDurationNormal(i, 1)
    a:setPrimaryDamage(i, FLOATING_CHAOS.DMG(i) / 2)
    a:setTargetsAllowed(i, [[ground,enemy,neutral,air,structure]])
end
