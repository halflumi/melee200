local a

-- NewBonus - Damaage
a = AbilityDefinitionAttackBonusPlus1:new("Z001")
a:setAttackBonus(1, 0)

-- NewBonus - Armor
a = AbilityDefinitionDefenseBonusPlus2:new("Z002")
a:setDefenseBonus(1, 0)

-- NewBonus - Stats
a = AbilityDefinitionAttributeModifierSkill:new("Z003")
a:setButtonPositionNormalX(0)
a:setItemAbility(true)
a:setAgilityBonus(1, 0)
a:setLevels(1)
a:setOrderStringUseTurnOn("")
a:setIntelligenceBonus(1, 0)
a:setButtonPositionNormalY(-11)
a:setStrengthBonus(1, 0)
a:setCheckDependencies(false)
a:setHeroAbility(false)

-- NewBonus - Health
a = AbilityDefinitionMaxLifeBonusLeast:new("Z004")
a:setMaxLifeGained(1, 0)
a:setButtonPositionNormalY(-11)

-- NewBonus - Mana
a = AbilityDefinitionMaxManaBonusLeast:new("Z005")
a:setMaxManaGained(1, 0)

-- NewBonus - Health Regen
a = AbilityDefinitionNeutralRegenhealthonly:new("Z006")
a:setAmountofHitPointsRegenerated(1, 0.0)
a:setAreaofEffect(1, 1.0)
a:setPercentage(1, false)
a:setItemAbility(true)
a:setTargetsAllowed(1, "self")
a:setCheckDependencies(false)

-- NewBonus - Mana Regen
a = AbilityDefinitionNeutralRegenmanaonly:new("Z007")
a:setAmountRegenerated(1, 0.0)
a:setPercentage(1, false)
a:setItemAbility(true)
a:setAreaofEffect(1, 1.0)
a:setTargetsAllowed(1, "self")
a:setButtonPositionNormalY(-11)
a:setCheckDependencies(false)

-- NewBonus - Attack Speed
a = AbilityDefinitionAttackSpeedIncrease:new("Z008")
a:setAttackSpeedIncrease(1, 0.0)

-- NewBonus - Movement Speed
a = AbilityDefinitionMoveSpeedBonus:new("Z009")
a:setMovementSpeedBonus(1, 0)

--[[ Extended
-- NewBonus - Sight Range
a = AbilityDefinitionSightBonus:new("Z00A")
a:setSightRangeBonus(1, 0)

-- NewBonus - Magic Resistance
a = AbilityDefinitionRunedBracers:new("Z00B")
a:setDamageReduction(1, 0.0)

-- NewBonus - Critical Strike
a = AbilityDefinitionCriticalStrikecreep:new("Z00C")
a:setDamageMultiplier(1, 1.0)
a:setChancetoCriticalStrike(1, 0.0)

-- NewBonus - Evasion
a = AbilityDefinitionEvasioncreep:new("Z00D")
a:setChancetoEvade(1, 0.0)

-- NewBonus - Life Steal
a = AbilityDefinitionVampiricattackAIva:new("Z00E")
a:setMissileArt("")
a:setLifeStolenPerAttack(1, 0.0)
]]
