OnInit.trig(function()
    local CAST_SPELL = FourCC(AID.ANCESTRAL_REINCARNATION)
    local TREE_ABIL = FourCC(AID.POWER_OF_NATURE)

    local SPAWN_EFFECT = [[Models\FlamestrikeNatureI.mdx]]
    local STAND_EFFECT = [[Models\NatureBlessing.mdx]]
    local ATTACH_EFFECT = [[Abilities\Weapons\IllidanMissile\IllidanMissile.mdl]]

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local caster = GetTriggerUnit()
        local p = GetOwningPlayer(caster)

        local aoe = GetAbilityAoe(caster, CAST_SPELL)
        local hp_loss_per_tick = GetAbilityDur(caster, CAST_SPELL) / 2
        local mp_loss_per_tick = GetAbilityDurHero(caster, CAST_SPELL) / 2

        -- Find the amount of trees destroyed by the spell.
        local destructibles = GetDestructablesInAoe(GetSpellTargetX(), GetSpellTargetY(), aoe)
        local tree_count = 0
        for _, d in ipairs(destructibles) do
            if IsDestructableTree(d) and GetDestructableLife(d) >= 1 then
                tree_count = tree_count + 1
            end
        end

        -- Eye candy.
        local x, y = GetSpellTargetX(), GetSpellTargetY()
        DestroyEffect(AddSpecialEffect(SPAWN_EFFECT, x, y))

        -- Summon. A small delay to avoid clipping with the trees.
        Timed.call(0.1, function()
            local lv = GetUnitAbilityLevel(caster, CAST_SPELL)
            local u = CreateUnit(p, FourCC(UID.ANCIENT_OF_MANA[lv]), x, y, (GetUnitFacing(caster) + 180) % 360)
            AddSpecialEffectTarget(STAND_EFFECT, u, "chest")
            AddSpecialEffectTarget(ATTACH_EFFECT, u, "left hand")
            if (lv == 2) then
                AddSpecialEffectTarget(ATTACH_EFFECT, u, "right hand")
            end
            -- Apply bonus according to the amount of sacrificed trees.
            SetUnitAbilityLevel(u, TREE_ABIL, tree_count)
            local hp_bonus_per_tree = GetAbilityAoe(u, TREE_ABIL)
            local max = GetUnitState(u, UNIT_STATE_MAX_LIFE)
            local new_max = math.floor(max * (1 + hp_bonus_per_tree * tree_count) + 0.5)
            BlzSetUnitMaxHP(u, new_max)
            SetUnitState(u, UNIT_STATE_LIFE, new_max)
            -- Lose mana then health over time until it dies.
            Timed.echo(0.5, function()
                if (not IsUnitAlive(u)) then
                    return true
                end

                local mp = GetUnitState(u, UNIT_STATE_MANA)
                if (mp > 0) then
                    SetUnitState(u, UNIT_STATE_MANA, mp - mp_loss_per_tick)
                    return false
                end

                local hp = GetUnitState(u, UNIT_STATE_LIFE)
                SetUnitState(u, UNIT_STATE_LIFE, hp - hp_loss_per_tick)
                return hp < hp_loss_per_tick
            end)
        end)
    end)
end)
