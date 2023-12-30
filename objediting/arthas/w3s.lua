local a, t

-- Area Holy Light
a = AbilityDefinitionIllidanChannel:new(AID.AREA_HOLY_LIGHT)
a:setLevels(AREA_HOLY_LIGHT.MAX_LEVEL)
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(0)
a:setButtonPositionNormalY(2)
a:setHotkeyLearn("Q")
a:setHotkeyNormal("Q")
a:setIconNormal(AREA_HOLY_LIGHT.ICON)
a:setIconResearch(AREA_HOLY_LIGHT.ICON)
a:setToolTips(AREA_HOLY_LIGHT.TOOLTIPS, AREA_HOLY_LIGHT.MAX_LEVEL)
for i = 1, AREA_HOLY_LIGHT.MAX_LEVEL do
    a:setAreaofEffect(i, AREA_HOLY_LIGHT.AOE)
    a:setBaseOrderID(i, "channel")
    a:setCastRange(i, AREA_HOLY_LIGHT.RNG)
    a:setCooldown(i, AREA_HOLY_LIGHT.CD)
    a:setDisableOtherAbilities(i, false)
    a:setFollowThroughTime(i, 1.2)
    a:setManaCost(i, AREA_HOLY_LIGHT.COST)
    a:setOptions(i, 3)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionPaladinHolyLight:new(AID.AREA_HOLY_LIGHT_SELF)
a:setLevels(AREA_HOLY_LIGHT.MAX_LEVEL)
a:setArtTarget([[Abilities\Spells\Human\Resurrect\ResurrectTarget.mdl]])
for i = 1, AREA_HOLY_LIGHT.MAX_LEVEL do
    a:setAmountHealedDamaged(i, AREA_HOLY_LIGHT.HEAL_SELF(i))
    a:setCooldown(i, 0.0)
    a:setCastRange(i, 1000000000.0)
end

a = AbilityDefinitionPaladinHolyLight:new(AID.AREA_HOLY_LIGHT_AREA)
a:setLevels(AREA_HOLY_LIGHT.MAX_LEVEL)
for i = 1, AREA_HOLY_LIGHT.MAX_LEVEL do
    a:setAmountHealedDamaged(i, AREA_HOLY_LIGHT.HEAL_OTHERS(i))
    a:setCooldown(i, 0.0)
    a:setCastRange(i, 1000000000.0)
end


-- Resonating Blade
a = AbilityDefinitionIllidanChannel:new(AID.RESONATING_BLADE)
a:setLevels(RESONATING_BLADE.MAX_LEVEL)
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(1)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(1)
a:setHotkeyLearn("W")
a:setHotkeyNormal("W")
a:setIconNormal(RESONATING_BLADE.ICON)
a:setIconResearch(RESONATING_BLADE.ICON)
a:setToolTips(RESONATING_BLADE.TOOLTIPS, RESONATING_BLADE.MAX_LEVEL)
for i = 1, RESONATING_BLADE.MAX_LEVEL do
    a:setAreaofEffect(i, RESONATING_BLADE.SOUL(i))
    a:setBaseOrderID(i, "charm")
    a:setCastRange(i, 0.0)
    a:setCooldown(i, 3.0)
    a:setDisableOtherAbilities(i, false)
    a:setDurationNormal(i, RESONATING_BLADE.SOUL_ATK_RATIO)
    a:setFollowThroughTime(i, 1.2)
    a:setOptions(i, 1)
end

a = AbilityDefinitionAlchemistAcidBomb:new(AID.RESONATING_BLADE_VISUAL)
a:setLevels(1)
a:setAreaofEffect(1, 0.0)
a:setArmorPenalty(1, 0)
a:setBuffs(1, BID.RESONATING_BLADE)
a:setCastRange(1, 1000000000.0)
a:setDamageInterval(1, 300.0)
a:setDurationHero(1, 1.0)
a:setMissileArc(0.0)
a:setMissileArt([[Abilities\Weapons\AvengerMissile\AvengerMissile.mdl]])
a:setMissileSpeed(600)
a:setPrimaryDamage(1, 0.0)
a:setSecondaryDamage(1, 0.0)
a:setTargetsAllowed(1, "player")


-- King Stride Aura
a = AbilityDefinitionPaladinDevotionAura:new(AID.KING_STRIDE_AURA)
t = CommaString("ground", "vulnerable", "air", "invulnerable", "friend")
a:setLevels(KING_STRIDE_AURA.MAX_LEVEL)
a:setArtTarget(KING_STRIDE_AURA.MDX)
a:setHotkeyLearn("E")
a:setIconNormal(KING_STRIDE_AURA.ICON_PAS)
a:setIconResearch(KING_STRIDE_AURA.ICON)
a:setToolTips(KING_STRIDE_AURA.TOOLTIPS, KING_STRIDE_AURA.MAX_LEVEL)
for i = 1, KING_STRIDE_AURA.MAX_LEVEL do
    a:setArmorBonus(i, KING_STRIDE_AURA.DEF(i) * 3.0)
    a:setBuffs(i, BID.KING_STRIDE_AURA_DEF)
    a:setTargetsAllowed(i, CommaString(t, "hero", "self"))
end

a = AbilityDefinitionAuraCommandCreep:new(AID.KING_STRIDE_AURA_HERO_ATK)
a:setLevels(KING_STRIDE_AURA.MAX_LEVEL)
a:setArtTarget("")
for i = 1, KING_STRIDE_AURA.MAX_LEVEL do
    a:setAreaofEffect(i, KING_STRIDE_AURA.AOE)
    a:setAttackDamageIncrease(i, KING_STRIDE_AURA.ATK(i) * 3.0)
    a:setBuffs(i, BID.KING_STRIDE_AURA_ATK)
    a:setMeleeBonus(i, true)
    a:setRangedBonus(i, true)
    a:setTargetsAllowed(i, CommaString(t, "hero", "self"))
end

a = AbilityDefinitionPaladinDevotionAura:new(AID.KING_STRIDE_AURA_UNIT_DEF)
a:setLevels(KING_STRIDE_AURA.MAX_LEVEL)
a:setArtTarget(KING_STRIDE_AURA.MDX)
for i = 1, KING_STRIDE_AURA.MAX_LEVEL do
    a:setArmorBonus(i, KING_STRIDE_AURA.DEF(i))
    a:setBuffs(i, BID.KING_STRIDE_AURA_DEF)
    a:setTargetsAllowed(i, CommaString(t, "nonhero", "structure"))
end

a = AbilityDefinitionAuraCommandCreep:new(AID.KING_STRIDE_AURA_UNIT_ATK)
a:setLevels(KING_STRIDE_AURA.MAX_LEVEL)
a:setArtTarget("")
for i = 1, KING_STRIDE_AURA.MAX_LEVEL do
    a:setAreaofEffect(i, KING_STRIDE_AURA.AOE)
    a:setAttackDamageIncrease(i, KING_STRIDE_AURA.ATK(i))
    a:setBuffs(i, BID.KING_STRIDE_AURA_ATK)
    a:setMeleeBonus(i, true)
    a:setRangedBonus(i, true)
    a:setTargetsAllowed(i, CommaString(t, "nonhero", "structure"))
end


-- Forst Blast
a = AbilityDefinitionIllidanChannel:new(AID.FROST_BLAST)
a:setLevels(FROST_BLAST.MAX_LEVEL)
a:setRequiredLevel(6)
a:setAnimationNames("attack")
a:setArtCaster("")
a:setArtEffect("")
a:setArtTarget("")
a:setButtonPositionNormalX(3)
a:setButtonPositionNormalY(2)
a:setButtonPositionResearchX(3)
a:setHotkeyLearn("R")
a:setHotkeyNormal("R")
a:setIconNormal(FROST_BLAST.ICON)
a:setIconResearch(FROST_BLAST.ICON)
a:setLevelSkipRequirement(6)
a:setToolTips(FROST_BLAST.TOOLTIPS, FROST_BLAST.MAX_LEVEL)
for i = 1, FROST_BLAST.MAX_LEVEL do
    a:setAreaofEffect(i, FROST_BLAST.BONUS_PER_X_SOULS)
    a:setBaseOrderID(i, "chemicalrage")
    a:setCastRange(i, 900.0)
    a:setCooldown(i, 60.0)
    a:setDisableOtherAbilities(i, false)
    a:setFollowThroughTime(i, 0.6)
    a:setManaCost(i, FROST_BLAST.COST(i))
    a:setOptions(i, 1)
    a:setTargetType(i, 2)
end

a = AbilityDefinitionLichFrostNova:new(AID.FROST_BLAST_NOVA)
a:setLevels(FROST_BLAST.MAX_LEVEL)
for i = 1, FROST_BLAST.MAX_LEVEL do
    a:setAreaofEffect(i, FROST_BLAST.AOE)
    a:setAreaofEffectDamage(i, FROST_BLAST.DAMAGE(i))
    a:setCastRange(i, 1000000000.0)
    a:setCooldown(i, 0.0)
    a:setDurationHero(i, 2.0)
    a:setDurationNormal(i, 4.0)
    a:setSpecificTargetDamage(i, 0.0)
    a:setTargetsAllowed(i, "enemies,ground,air,neutral")
end


-- Plot Armor
a = AbilityDefinition:new(AID.PLOT_ARMOR, "Amgl")
a:setButtonPositionNormalY(1)
a:setCheckDependencies(false)
a:setIconNormal(PLOT_ARMOR.ICON)
a:setToolTips(PLOT_ARMOR.TOOLTIPS)

a = AbilityDefinition:new(AID.PLOT_ARMOR_DISABLED, "Amgl")
a:setButtonPositionNormalY(1)
a:setCheckDependencies(false)
a:setIconNormal(PLOT_ARMOR.ICON2)
a:setToolTips(PLOT_ARMOR.TOOLTIPS2)

a = AbilityDefinitionInnerFire:new(AID.PLOT_ARMOR_BUFF)
a:setBuffs(1, BID.PLOT_ARMOR)
a:setCheckDependencies(false)
a:setDamageIncrease(1, 0)
a:setDefenseIncrease(1, 1000000)
a:setDurationHero(1, PLOT_ARMOR.DUR)
a:setEffectSound("")
a:setLifeRegenRate(1, PLOT_ARMOR.REGEN)
a:setTargetsAllowed(1, "invu")

a = AbilityDefinitionRunedBracers:new(AID.PLOT_ARMOR_MAGIC_RES)
a:setDamageReduction(1, 1)
