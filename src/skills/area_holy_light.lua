OnInit.trig(function()
    local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
    local CAST_SPELL = FourCC(AID.AREA_HOLY_LIGHT)
    local SELF_SPELL = FourCC(AID.AREA_HOLY_LIGHT_SELF)
    local VICINITY_SPELL = FourCC(AID.AREA_HOLY_LIGHT_AREA)

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local x, y = GetSpellTargetX(), GetSpellTargetY()
        local dummy = CreateUnit(GetOwningPlayer(GetTriggerUnit()), DUMMY_ID, x, y, 0)
        ShowUnit(dummy, false)
        UnitApplyTimedLife(dummy, 1, 1)
        -- Cast holy light 2 to the caster.
        UnitAddAbility(dummy, SELF_SPELL)
        SetUnitAbilityLevel(dummy, SELF_SPELL, GetUnitAbilityLevel(GetTriggerUnit(), CAST_SPELL))
        IssueTargetOrder(dummy, "holybolt", GetTriggerUnit())
        UnitRemoveAbility(dummy, SELF_SPELL)
        -- Cast holy light 1 to other units in the vicinity.
        UnitAddAbility(dummy, VICINITY_SPELL)
        SetUnitAbilityLevel(dummy, VICINITY_SPELL, GetUnitAbilityLevel(GetTriggerUnit(), CAST_SPELL))
        local targets = GetUnitsInAoe(x, y, GetAbilityAoe(GetTriggerUnit(), CAST_SPELL))
        for _, u in ipairs(targets) do
            if u ~= GetTriggerUnit() then
                IssueTargetOrder(dummy, "holybolt", u)
            end
        end
    end)
end)
