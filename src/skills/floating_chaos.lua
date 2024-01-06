local SPAWN_SOUND = [[Sound\Ambient\DoodadEffects\BlueFireBurst.wav]]
PreloadSound(SPAWN_SOUND)

OnInit.trig(function()
    local CAST_SPELL = FourCC(AID.FLOATING_CHAOS)
    local FIREBALL_SPELL = FourCC(AID.FLOATING_CHAOS_ATK)
    local FIREBALL_UNIT = FourCC(UID.FLOATING_CHAOS)

    local SPAWN_EFFECT = [[Objects\Spawnmodels\Human\SmallFlameSpawn\SmallFlameSpawn.mdl]]

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local caster = GetTriggerUnit()
        local p = GetOwningPlayer(caster)
        local x, y = GetSpellTargetX(), GetSpellTargetY()

        local fireball_range = GetAbilityAoe(caster, CAST_SPELL)

        local ball = CreateUnit(p, FIREBALL_UNIT, x, y, 0)
        -- Spawn SFX.
        local e = AddSpecialEffect(SPAWN_EFFECT, x, y)
        BlzSetSpecialEffectTimeScale(e, 3)
        Timed.call(1.0, function() DestroyEffect(e) end) -- A small delay since spawnmodels disappear immediately when destroyed.
        local sound = CreateSound(SPAWN_SOUND, false, true, true, 10, 10, "")
        PlaySoundOnUnitBJ(sound, 50, ball)
        KillSoundWhenDone(sound)
        -- Let the fireball last a bit longer to release the last shoot.
        UnitApplyGenericTimedLife(ball, GetAbilityDur(caster, CAST_SPELL) + 0.2)
        UnitAddAbility(ball, FIREBALL_SPELL)
        SetUnitAbilityLevel(ball, FIREBALL_SPELL, GetUnitAbilityLevel(caster, CAST_SPELL))
        Timed.echo(1.0, function()
            if (not IsUnitAlive(ball)) then return true end
            local targets = GetUnitsInAoe(x, y, fireball_range, function(u)
                return not IsUnitAlly(u, p) and IsUnitAlive(u)
            end)
            if #targets > 0 then
                local target = targets[math.random(#targets)]
                IssueTargetOrder(ball, "acidbomb", target)
            end
            return false;
        end)
    end)
end)
