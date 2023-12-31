local u

-- Antonidas
u = HeroDefinition:new(UID.ANTONIDAS, "Hgam")
u:applyMeleeStats(Race.Human)
u:setHeroAbilities(CommaString(AID.FROST_STORM, AID.SUMMON_BLOOD_ELEMENTAL, AID.MANA_WARD, AID.MASS_RECALL))
u:setNormalAbilities(CommaString("AInv", AID.SPIRITUAL_FIRE_BALL))
u:setArmorSoundType(ArmorSoundType.Ethereal)
u:setAttack1ProjectileArt([[Models\BlueFireBallMissile.mdl]])
u:setButtonPositionY(2)
u:setHotkey("G")
u:setMovementSound("HumanHeroArchMageMovement")
u:setTooltipBasic("Summon |cffffcc00G|rhostly Archmage")
u:setTooltipRevive("Revive |cffffcc00G|rhostly Archmage")
u:setTooltipExtended(
    "Mystical Hero Spirit, adept at ranged assaults. Can learn Frost Storm, Summon Blood Elemental, Mana Ward and Mass Recall." ..
    "|n" ..
    "|n|cffffcc00Attacks land and air units.|r"
)


-- Mana Wards
for lv, id in ipairs(UID.MANA_WARD) do
    u = BuildingAndHeroDefinition:new(id, "ohwd")
    u:setName("Mana Ward")
    u:setHitPointsMaximumBase(MANA_WARD.HP(lv))
    u:setIconGameInterface(MANA_WARD.ICON)
    u:setModelFile(MANA_WARD.MDX)
    u:setNormalAbilities(AID.MANA_WARD_REGEN[lv])
end


-- Blood Elemental
for lv, id in ipairs(UID.BLOOD_ELEMENTAL) do
    u = BuildingAndHeroDefinition:new(id, "hwat")
    u:setName("Blood Elemental")
    u:setAttack1AttackType(AttackType.Magic)
    u:setAttack1DamageBase(BLOOD_ELEMENTAL.ATK(lv))
    u:setAttack1ProjectileArt(BLOOD_ELEMENTAL.MDX_PROJ)
    u:setDefenseBase(BLOOD_ELEMENTAL.DEF(lv))
    u:setHitPointsMaximumBase(BLOOD_ELEMENTAL.HP(lv))
    u:setIconGameInterface(BLOOD_ELEMENTAL.ICON)
    u:setModelFile(BLOOD_ELEMENTAL.MDX_UNIT)
    u:setScalingValue(BLOOD_ELEMENTAL.SCALE(lv))
    if lv >= 4 then
        u:setNormalAbilities(AID.BLOOD_ELEMENTAL_RAGE)
    end
end
