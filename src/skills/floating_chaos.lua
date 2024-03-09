OnInit.trig(function()
    local CAST_SPELL = FourCC(AID.FLOATING_CHAOS)
    local FIREBALL_SPELL = FourCC(AID.FLOATING_CHAOS_ATK)
    local FIREBALL_UNIT = FourCC(UID.FLOATING_CHAOS)

    local SPAWN_SOUND = [[Sound\Ambient\DoodadEffects\BlueFireBurst.wav]]
    local SPAWN_EFFECT = [[Objects\Spawnmodels\Human\SmallFlameSpawn\SmallFlameSpawn.mdl]]
    local PROJECTILE = [[Models\FireboltRoughMinor.mdx]]

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

            local potential_targets = GetUnitsInAoe(x, y, fireball_range, function(u)
                return not IsUnitAlly(u, p) and IsUnitAlive(u) and not IsUnitMagicImmune(u)
            end)

            local units, buildings = {}, {}
            for _, u in ipairs(potential_targets) do
                if IsUnitType(u, UNIT_TYPE_STRUCTURE) then
                    table.insert(buildings, u)
                else
                    table.insert(units, u)
                end
            end

            local fired = false
            local function try_firing(targets)
                if fired then return end
                local sequence = GenerateRandomSequence(#targets)
                for _, i in ipairs(sequence) do
                    if IssueTargetOrder(ball, "acidbomb", targets[i]) then
                        fired = true
                        return
                    end
                end
            end
            try_firing(units)
            try_firing(buildings)

            if not fired then
                local proj = AddSpecialEffect(PROJECTILE, x, y)
                BlzSetSpecialEffectHeight(proj, 240)
                DestroyEffect(proj)
            end

            return false;
        end)
    end)
end)
