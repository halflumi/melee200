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