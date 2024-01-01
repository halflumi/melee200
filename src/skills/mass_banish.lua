OnInit.trig(function()
    local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
    local CAST_SPELL = FourCC(AID.MASS_BANISH)
    local IMPL_SPELL = FourCC(AID.MASS_BANISH_IMPL)

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local c = GetTriggerUnit()
        local x, y = GetSpellTargetX(), GetSpellTargetY()
        local dummy = CreateUnit(GetOwningPlayer(c), DUMMY_ID, x, y, 0)
        ShowUnit(dummy, false)
        UnitApplyTimedLife(dummy, 1, 1)
        UnitAddAbility(dummy, IMPL_SPELL)
        SetUnitAbilityLevel(dummy, IMPL_SPELL, GetUnitAbilityLevel(c, CAST_SPELL))
        local targets = GetUnitsInAoe(x, y, GetAbilityAoe(c, CAST_SPELL))
        for _, u in ipairs(targets) do
            IssueTargetOrder(dummy, "banish", u)
        end
    end)
end)
