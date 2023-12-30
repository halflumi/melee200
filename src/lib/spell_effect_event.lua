--Lua RegisterSpellEffectEvent
do
    local tb =  {}
    local trig = nil

    ---@param abil integer
    function RegisterSpellEffectEvent(abil, onCast)
        if not trig then
            trig = CreateTrigger()
            for i = 0, bj_MAX_PLAYERS - 1 do
                TriggerRegisterPlayerUnitEvent(trig, Player(i), EVENT_PLAYER_UNIT_SPELL_EFFECT, nil)
            end
            TriggerAddCondition(trig, Condition(function()
                local i = tb[GetSpellAbilityId()]
                if i then i() end
            end))
        end
        tb[abil] = onCast
    end
end

--syntax is:
--RegisterSpellEffectEvent(FourCC('Abil'), function() print(GetUnitName(GetTriggerUnit())) end)
