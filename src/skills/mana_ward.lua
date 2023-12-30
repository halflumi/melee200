OnInit.trig(function()
    local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
    local CAST_SPELL = FourCC(AID.MANA_WARD)
    local WARD_SPELL = FourCC(AID.MANA_WARD_SUMMON)

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local x, y = GetSpellTargetX(), GetSpellTargetY()
        local dummy = CreateUnit(GetOwningPlayer(GetTriggerUnit()), DUMMY_ID, x, y, 0)
        ShowUnit(dummy, false)
        UnitApplyTimedLife(dummy, 1, 1)
        UnitAddAbility(dummy, WARD_SPELL)
        SetUnitAbilityLevel(dummy, WARD_SPELL, GetUnitAbilityLevel(GetTriggerUnit(), CAST_SPELL))
        IssuePointOrder(dummy, "healingward", x, y)
    end)
end)
