---@class UnitOrBuildingOrHeroDefinition: W3UDefinition
UnitOrBuildingOrHeroDefinition = {}
_G.UnitOrBuildingOrHeroDefinition = UnitOrBuildingOrHeroDefinition

---new
---@param id string
---@param superId string
---@return UnitOrBuildingOrHeroDefinition
function UnitOrBuildingOrHeroDefinition:new(id, superId) end

---setItemsSold
---<**usei**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setItemsSold(data) end

---setUnitsSold
---<**useu**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setUnitsSold(data) end

---setHideMinimapDisplay
---<**uhom**>
---@param flag boolean
function UnitOrBuildingOrHeroDefinition:setHideMinimapDisplay(flag) end

---setUseExtendedLineofSight
---<**ulos**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setUseExtendedLineofSight(data) end

---setUseClickHelper
---<**uuch**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setUseClickHelper(data) end

---setUpgradesUsed
---<**upgr**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setUpgradesUsed(data) end

---setUnitSoundSet
---<**usnd**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setUnitSoundSet(data) end

---setUnitClassification
---<**utyp**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setUnitClassification(data) end

---setMovementType
---<**umvt**>
---@param mtype MovementType
function UnitOrBuildingOrHeroDefinition:setMovementType(mtype) end

---setTurnRate
---<**umvr**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setTurnRate(data) end

---setTintingColorBlue
---<**uclb**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setTintingColorBlue(data) end

---setTintingColorGreen
---<**uclg**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setTintingColorGreen(data) end

---setTintingColorRed
---<**uclr**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setTintingColorRed(data) end

---setTilesets
---<**util**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setTilesets(data) end

---setTeamColor
---<**utco**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setTeamColor(data) end

---setTargetedAs
---<**utar**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setTargetedAs(data) end

---setTarget
---<**utaa**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setTarget(data) end

---setArtTarget
---<**utaa**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setArtTarget(data) end

---setStockStartDelay
---<**usst**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setStockStartDelay(data) end

---setStockReplenishInterval
---<**usrg**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setStockReplenishInterval(data) end

---setStockMaximum
---<**usma**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setStockMaximum(data) end

---setSpeedMinimum
---<**umis**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSpeedMinimum(data) end

---setSpeedMaximum
---<**umas**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSpeedMaximum(data) end

---setSpeedBase
---<**umvs**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSpeedBase(data) end

---setSpecial
---<**uspa**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setSpecial(data) end

---setArtSpecial
---<**uspa**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setArtSpecial(data) end

---setSleeps
---<**usle**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setSleeps(data) end

---setSightRadiusNight
---<**usin**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSightRadiusNight(data) end

---setSightRadiusDay
---<**usid**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSightRadiusDay(data) end

---setShadowTextureBuilding
---<**ushb**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setShadowTextureBuilding(data) end

---setShadowImageWidth
---<**ushw**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setShadowImageWidth(data) end

---setShadowImageUnit
---<**ushu**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setShadowImageUnit(data) end

---setShadowImageHeight
---<**ushh**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setShadowImageHeight(data) end

---setShadowImageCenterY
---<**ushy**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setShadowImageCenterY(data) end

---setShadowImageCenterX
---<**ushx**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setShadowImageCenterX(data) end

---setSelectionScale
---<**ussc**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setSelectionScale(data) end

---setSelectionCircleOnWater
---<**usew**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setSelectionCircleOnWater(data) end

---setSelectionCircleHeight
---<**uslz**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setSelectionCircleHeight(data) end

---setScalingValue
---<**usca**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setScalingValue(data) end

---setScaleProjectiles
---<**uscb**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setScaleProjectiles(data) end

---setRequiredBoneNames
---<**ubpr**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setRequiredBoneNames(data) end

---setRequiredAttachmentLinkNames
---<**ualp**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setRequiredAttachmentLinkNames(data) end

---setRequiredAnimationNamesAttachments
---<**uaap**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setRequiredAnimationNamesAttachments(data) end

---setRequiredAnimationNames
---<**uani**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setRequiredAnimationNames(data) end

---setRepairTime
---<**urtm**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setRepairTime(data) end

---setRepairLumberCost
---<**ulur**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setRepairLumberCost(data) end

---setRepairGoldCost
---<**ugor**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setRepairGoldCost(data) end

---setRandomSound
---<**ursl**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setRandomSound(data) end

---setRace
---<**urac**>
---@param data Race
function UnitOrBuildingOrHeroDefinition:setRace(data) end

---setPropulsionWindowdegrees
---<**uprw**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setPropulsionWindowdegrees(data) end

---setProjectileLaunchZSwimming
---<**ulsz**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setProjectileLaunchZSwimming(data) end

---setProjectileLaunchZ
---<**ulpz**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setProjectileLaunchZ(data) end

---setProjectileLaunchY
---<**ulpy**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setProjectileLaunchY(data) end

---setProjectileLaunchX
---<**ulpx**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setProjectileLaunchX(data) end

---setProjectileImpactZSwimming
---<**uisz**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setProjectileImpactZSwimming(data) end

---setProjectileImpactZ
---<**uimz**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setProjectileImpactZ(data) end

---setPriority
---<**upri**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setPriority(data) end

---setPointValue
---<**upoi**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setPointValue(data) end

---setPlaceableInEditor
---<**uine**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setPlaceableInEditor(data) end

---setOrientationInterpolation
---<**uori**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setOrientationInterpolation(data) end

---setOccluderHeight
---<**uocc**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setOccluderHeight(data) end

---setNormalAbilities
---<**uabi**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setNormalAbilities(data) end

---setNameEditorSuffix
---<**unsf**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setNameEditorSuffix(data) end

---setMovementSound
---<**umsl**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setMovementSound(data) end

---setModelFileExtraVersions
---<**uver**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setModelFileExtraVersions(data) end

---setModelFile
---<**umdl**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setModelFile(data) end

---setMinimumAttackRange
---<**uamn**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setMinimumAttackRange(data) end

---setMaximumRollAngledegrees
---<**umxr**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setMaximumRollAngledegrees(data) end

---setMaximumPitchAngledegrees
---<**umxp**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setMaximumPitchAngledegrees(data) end

---setManaRegeneration
---<**umpr**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setManaRegeneration(data) end

---setManaMaximum
---<**umpm**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setManaMaximum(data) end

---setManaInitialAmount
---<**umpi**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setManaInitialAmount(data) end

---setLumberCost
---<**ulum**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setLumberCost(data) end

---setSoundLoopingFadeOutRate
---<**ulfo**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSoundLoopingFadeOutRate(data) end

---setSoundLoopingFadeInRate
---<**ulfi**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setSoundLoopingFadeInRate(data) end

---setIsaBuilding
---<**ubdg**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setIsaBuilding(data) end

---setIconScoreScreen
---<**ussi**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setIconScoreScreen(data) end

---setIconGameInterface
---<**uico**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setIconGameInterface(data) end

---setHitPointsRegenerationType
---<**uhrt**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setHitPointsRegenerationType(data) end

---setHitPointsRegenerationRate
---<**uhpr**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setHitPointsRegenerationRate(data) end

---setHitPointsMaximumBase
---<**uhpm**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setHitPointsMaximumBase(data) end

---setMovementHeightMinimum
---<**umvf**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setMovementHeightMinimum(data) end

---setMovementHeight
---<**umvh**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setMovementHeight(data) end

---setHasWaterShadow
---<**ushr**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setHasWaterShadow(data) end

---setHasTilesetSpecificData
---<**utss**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setHasTilesetSpecificData(data) end

---setGoldCost
---<**ugol**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setGoldCost(data) end

---setGoldBountyAwardedSidesperDie
---<**ubsi**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setGoldBountyAwardedSidesperDie(data) end

---setGoldBountyAwardedNumberofDice
---<**ubdi**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setGoldBountyAwardedNumberofDice(data) end

---setGoldBountyAwardedBase
---<**ubba**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setGoldBountyAwardedBase(data) end

---setLumberBountyAwardedSidesperDie
---<**ulbs**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setLumberBountyAwardedSidesperDie(data) end

---setLumberBountyAwardedNumberofDice
---<**ulbd**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setLumberBountyAwardedNumberofDice(data) end

---setLumberBountyAwardedBase
---<**ulba**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setLumberBountyAwardedBase(data) end

---setFoodProduced
---<**ufma**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setFoodProduced(data) end

---setFoodCost
---<**ufoo**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setFoodCost(data) end

---setFogOfWarSampleRadius
---<**ufrd**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setFogOfWarSampleRadius(data) end

---setElevationSampleRadius
---<**uerd**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setElevationSampleRadius(data) end

---setElevationSamplePoints
---<**uept**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setElevationSamplePoints(data) end

---setDisplayasNeutralHostile
---<**uhos**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setDisplayasNeutralHostile(data) end

---setDependencyEquivalents
---<**udep**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setDependencyEquivalents(data) end

---setDefenseUpgradeBonus
---<**udup**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setDefenseUpgradeBonus(data) end

---setArmorType
---<**udty**>
---@param data ArmorType
function UnitOrBuildingOrHeroDefinition:setArmorType(data) end

---setDefenseBase
---<**udef**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setDefenseBase(data) end

---setDefaultActiveAbility
---<**udaa**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setDefaultActiveAbility(data) end

---setDeathType
---<**udea**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setDeathType(data) end

---setDeathTimeseconds
---<**udtm**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setDeathTimeseconds(data) end

---setCollisionSize
---<**ucol**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setCollisionSize(data) end

---setCategorizationSpecial
---<**uspe**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setCategorizationSpecial(data) end

---setCategorizationCampaign
---<**ucam**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setCategorizationCampaign(data) end

---setCanFlee
---<**ufle**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setCanFlee(data) end

---setCanDropItemsOnDeath
---<**udro**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setCanDropItemsOnDeath(data) end

---setBuildTime
---<**ubld**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setBuildTime(data) end

---setAttacksEnabled
---<**uaen**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttacksEnabled(data) end

---setAttack2WeaponType
---<**ua2w**>
---@param wepType WeaponType
function UnitOrBuildingOrHeroDefinition:setAttack2WeaponType(wepType) end

---setAttack2WeaponSound
---<**ucs2**>
---@param data WeaponSound
function UnitOrBuildingOrHeroDefinition:setAttack2WeaponSound(data) end

---setAttack2TargetsAllowed
---<**ua2g**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAttack2TargetsAllowed(data) end

---setAttack2ShowUI
---<**uwu2**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setAttack2ShowUI(data) end

---setAttack2RangeMotionBuffer
---<**urb2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2RangeMotionBuffer(data) end

---setAttack2Range
---<**ua2r**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2Range(data) end

---setAttack2ProjectileSpeed
---<**ua2z**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2ProjectileSpeed(data) end

---setAttack2ProjectileHomingEnabled
---<**umh2**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setAttack2ProjectileHomingEnabled(data) end

---setAttack2ProjectileArt
---<**ua2m**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAttack2ProjectileArt(data) end

---setAttack2ProjectileArc
---<**uma2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2ProjectileArc(data) end

---setAttack2MaximumNumberofTargets
---<**utc2**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2MaximumNumberofTargets(data) end

---setAttack2DamageUpgradeAmount
---<**udu2**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2DamageUpgradeAmount(data) end

---setAttack2DamageSpillRadius
---<**usr2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2DamageSpillRadius(data) end

---setAttack2DamageSpillDistance
---<**usd2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2DamageSpillDistance(data) end

---setAttack2DamageSidesperDie
---<**ua2s**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2DamageSidesperDie(data) end

---setAttack2DamageNumberofDice
---<**ua2d**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2DamageNumberofDice(data) end

---setAttack2DamageLossFactor
---<**udl2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2DamageLossFactor(data) end

---setAttack2DamageFactorSmall
---<**uqd2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2DamageFactorSmall(data) end

---setAttack2DamageFactorMedium
---<**uhd2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2DamageFactorMedium(data) end

---setAttack2DamageBase
---<**ua2b**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2DamageBase(data) end

---setAttack2CooldownTime
---<**ua2c**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2CooldownTime(data) end

---setAttack2AttackType
---<**ua2t**>
---@param data AttackType
function UnitOrBuildingOrHeroDefinition:setAttack2AttackType(data) end

---setAttack2AreaofEffectTargets
---<**ua2p**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAttack2AreaofEffectTargets(data) end

---setAttack2AreaofEffectSmallDamage
---<**ua2q**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2AreaofEffectSmallDamage(data) end

---setAttack2AreaofEffectMediumDamage
---<**ua2h**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2AreaofEffectMediumDamage(data) end

---setAttack2AreaofEffectFullDamage
---<**ua2f**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack2AreaofEffectFullDamage(data) end

---setAttack2AnimationDamagePoint
---<**udp2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2AnimationDamagePoint(data) end

---setAttack2AnimationBackswingPoint
---<**ubs2**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack2AnimationBackswingPoint(data) end

---setAttack1WeaponType
---<**ua1w**>
---@param weaponType WeaponType
function UnitOrBuildingOrHeroDefinition:setAttack1WeaponType(weaponType) end

---setAttack1WeaponSound
---<**ucs1**>
---@param data WeaponSound
function UnitOrBuildingOrHeroDefinition:setAttack1WeaponSound(data) end

---setAttack1TargetsAllowed
---<**ua1g**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAttack1TargetsAllowed(data) end

---setAttack1ShowUI
---<**uwu1**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setAttack1ShowUI(data) end

---setAttack1RangeMotionBuffer
---<**urb1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1RangeMotionBuffer(data) end

---setAttack1Range
---<**ua1r**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1Range(data) end

---setAttack1ProjectileSpeed
---<**ua1z**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1ProjectileSpeed(data) end

---setAttack1ProjectileHomingEnabled
---<**umh1**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setAttack1ProjectileHomingEnabled(data) end

---setAttack1ProjectileArt
---<**ua1m**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAttack1ProjectileArt(data) end

---setAttack1ProjectileArc
---<**uma1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1ProjectileArc(data) end

---setAttack1MaximumNumberofTargets
---<**utc1**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1MaximumNumberofTargets(data) end

---setAttack1DamageUpgradeAmount
---<**udu1**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1DamageUpgradeAmount(data) end

---setAttack1DamageSpillRadius
---<**usr1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1DamageSpillRadius(data) end

---setAttack1DamageSpillDistance
---<**usd1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1DamageSpillDistance(data) end

---setAttack1DamageSidesperDie
---<**ua1s**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1DamageSidesperDie(data) end

---setAttack1DamageNumberofDice
---<**ua1d**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1DamageNumberofDice(data) end

---setAttack1DamageLossFactor
---<**udl1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1DamageLossFactor(data) end

---setAttack1DamageFactorSmall
---<**uqd1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1DamageFactorSmall(data) end

---setAttack1DamageFactorMedium
---<**uhd1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1DamageFactorMedium(data) end

---setAttack1DamageBase
---<**ua1b**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1DamageBase(data) end

---setAttack1CooldownTime
---<**ua1c**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1CooldownTime(data) end

---setAttack1AttackType
---<**ua1t**>
---@param data AttackType
function UnitOrBuildingOrHeroDefinition:setAttack1AttackType(data) end

---setAttack1AreaofEffectTargets
---<**ua1p**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAttack1AreaofEffectTargets(data) end

---setAttack1AreaofEffectSmallDamage
---<**ua1q**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1AreaofEffectSmallDamage(data) end

---setAttack1AreaofEffectMediumDamage
---<**ua1h**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1AreaofEffectMediumDamage(data) end

---setAttack1AreaofEffectFullDamage
---<**ua1f**>
---@param data integer
function UnitOrBuildingOrHeroDefinition:setAttack1AreaofEffectFullDamage(data) end

---setAttack1AnimationDamagePoint
---<**udp1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1AnimationDamagePoint(data) end

---setAttack1AnimationBackswingPoint
---<**ubs1**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAttack1AnimationBackswingPoint(data) end

---setArmorSoundType
---<**uarm**>
---@param data ArmorSoundType
function UnitOrBuildingOrHeroDefinition:setArmorSoundType(data) end

---setAnimationWalkSpeed
---<**uwal**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAnimationWalkSpeed(data) end

---setAnimationRunSpeed
---<**urun**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAnimationRunSpeed(data) end

---setAnimationCastPoint
---<**ucpt**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAnimationCastPoint(data) end

---setAnimationCastBackswing
---<**ucbs**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAnimationCastBackswing(data) end

---setAnimationBlendTimeseconds
---<**uble**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAnimationBlendTimeseconds(data) end

---setAllowCustomTeamColor
---<**utcc**>
---@param data boolean
function UnitOrBuildingOrHeroDefinition:setAllowCustomTeamColor(data) end

---setAIPlacementType
---<**uabt**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setAIPlacementType(data) end

---setAIPlacementRadius
---<**uabr**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAIPlacementRadius(data) end

---setAcquisitionRange
---<**uacq**>
---@param data float
function UnitOrBuildingOrHeroDefinition:setAcquisitionRange(data) end

---setStructuresBuilt
---<**ubui**>
---@param data string
function UnitOrBuildingOrHeroDefinition:setStructuresBuilt(data) end
