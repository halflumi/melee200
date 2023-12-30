OnInit.trig(function()
    local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
    local CAST_SPELL = FourCC(AID.BLOOD_ELEMENTAL_RAGE)
    local BUFF_SPELL = FourCC(AID.BLOOD_ELEMENTAL_RAGE_ACTUAL)

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local u = GetTriggerUnit()
        local cost = GetAbilityAoe(u, CAST_SPELL)
        local life = GetUnitState(u, UNIT_STATE_LIFE)
        if (life <= cost) then
            KillUnit(u)
        end
        SetUnitState(u, UNIT_STATE_LIFE, life - cost)

        local x, y = GetUnitX(u), GetUnitY(u)
        local dummy = CreateUnit(GetOwningPlayer(u), DUMMY_ID, x, y, 0)
        ShowUnit(dummy, false)
        UnitApplyTimedLife(dummy, 1, 1)
        UnitAddAbility(dummy, BUFF_SPELL)
        SetUnitAbilityLevel(dummy, BUFF_SPELL, GetUnitAbilityLevel(u, CAST_SPELL))
        IssueTargetOrder(dummy, "unholyfrenzy", u)
    end)
end)
