OnInit.trig(function()
    local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
    local CAST_SPELL = FourCC(AID.RAIN_OF_HELLFIRE)
    local IMPL_SPELL = FourCC(AID.RAIN_OF_HELLFIRE_IMPL)
    local SOUND_SPELL = FourCC(AID.RAIN_OF_HELLFIRE_SOUND)

    ---@type table<unit, function>
    local callbacks = {}

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local c = GetTriggerUnit()
        local x, y = GetSpellTargetX(), GetSpellTargetY()

        local aoe = GetAbilityAoe(c, CAST_SPELL)
        local interval = GetAbilityDur(c, CAST_SPELL)
        local sound_interval = GetAbilityDurHero(c, CAST_SPELL)

        local dummy = CreateUnit(GetOwningPlayer(c), DUMMY_ID, x, y, 0)
        ShowUnit(dummy, false)
        UnitAddAbility(dummy, IMPL_SPELL)
        UnitAddAbility(dummy, SOUND_SPELL)
        SetUnitAbilityLevel(dummy, IMPL_SPELL, GetUnitAbilityLevel(c, CAST_SPELL))

        callbacks[c] = function() RemoveUnit(dummy) end

        local sound_acc = sound_interval
        Timed.echo(interval, function()
            if not IsUnitAlive(dummy) then return true end

            local rx, ry = GetRandomPointInRange(x, y, aoe)
            IssuePointOrder(dummy, "rainoffire", rx, ry)
            if sound_acc >= sound_interval then
                IssuePointOrder(dummy, "blizzard", rx, ry)
                sound_acc = sound_acc - sound_interval
            end
            sound_acc = sound_acc + interval
            return false
        end)
    end)

    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_SPELL_ENDCAST, function()
        local u = GetSpellAbilityUnit()
        if GetSpellAbilityId() == CAST_SPELL and callbacks[u] ~= nil then
            callbacks[u]()
            callbacks[u] = nil
        end
    end)
end)
