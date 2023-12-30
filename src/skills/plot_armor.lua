OnInit.trig(function()
    local DUMMY = FourCC(UID.CASTER_DUMMY)
    local ABIL = FourCC(AID.PLOT_ARMOR)
    local ABIL_DISABLED = FourCC(AID.PLOT_ARMOR_DISABLED)
    local ABIL_MAGIC_RES = FourCC(AID.PLOT_ARMOR_MAGIC_RES)
    local BUFF_SPELL = FourCC(AID.PLOT_ARMOR_BUFF)

    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_DAMAGED, function()
        local u = GetTriggerUnit()
        if BlzGetUnitAbility(u, ABIL) ~= nil then
            local damage = GetEventDamage()
            if GetUnitState(u, UNIT_STATE_LIFE) <= damage + 1 then
                -- Prevent death with a short invulnerability.
                SetUnitState(u, UNIT_STATE_LIFE, damage + 1)
                SetUnitInvulnerable(u, true)
                Timed.call(0.125, function()
                    SetUnitInvulnerable(u, false)
                end)

                local x, y = GetUnitX(u), GetUnitY(u)
                local dummy = CreateUnit(GetOwningPlayer(u), DUMMY, x, y, 0)
                ShowUnit(dummy, false)
                UnitApplyTimedLife(dummy, 1, 1)
                UnitAddAbility(dummy, BUFF_SPELL)
                IssueTargetOrder(dummy, "innerfire", u)

                UnitRemoveAbility(u, ABIL)
                UnitAddAbility(u, ABIL_DISABLED)

                -- Apply timed magic resistance.
                local a = BlzGetUnitAbility(dummy, BUFF_SPELL)
                local dur = BlzGetAbilityRealLevelField(a, ABILITY_RLF_DURATION_HERO, 0)
                UnitAddAbility(u, ABIL_MAGIC_RES)
                Timed.call(dur, function()
                    UnitRemoveAbility(u, ABIL_MAGIC_RES)
                end)
            end
        end
    end)
end)
