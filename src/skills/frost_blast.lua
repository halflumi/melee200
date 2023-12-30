OnInit.trig(function()
    local CASTER_DUMMY = FourCC(UID.CASTER_DUMMY)
    local TARGET_DUMMY = FourCC(UID.TARGET_DUMMY)
    local CAST_SPELL = FourCC(AID.FROST_BLAST)
    local NOVA_SPELL = FourCC(AID.FROST_BLAST_NOVA)

    local START_DISTANCE = 100.0

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local hero = GetTriggerUnit()
        local bonus_nova = RBSouls:soul(hero) // GetAbilityAoe(hero, CAST_SPELL)

        local x, y = GetSpellTargetX(), GetSpellTargetY()
        local dummy = CreateUnit(GetOwningPlayer(hero), CASTER_DUMMY, x, y, 0)
        ShowUnit(dummy, false)
        UnitApplyTimedLife(dummy, 1, 1)
        UnitAddAbility(dummy, NOVA_SPELL)
        SetUnitAbilityLevel(dummy, NOVA_SPELL, GetUnitAbilityLevel(hero, CAST_SPELL))
        -- Target dummy.
        local target_dummy = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), TARGET_DUMMY, x, y, 0)
        UnitApplyTimedLife(target_dummy, 1, 1)
        -- Novas.
        local aoe = GetAbilityAoe(dummy, NOVA_SPELL)
        local caster_x, caster_y = GetUnitX(hero), GetUnitY(hero)
        local angle = AngleBetweenPointsXY(caster_x, caster_y, GetSpellTargetX(), GetSpellTargetY())
        for i = 1, 5 + bonus_nova do
            x, y = PolarProjection(caster_x, caster_y, START_DISTANCE + aoe * i, angle)
            SetUnitPosition(target_dummy, x, y)
            IssueTargetOrder(dummy, "frostnova", target_dummy)
        end
    end)
end)
