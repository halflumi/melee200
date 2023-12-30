OnInit.trig(function()
    local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
    local CAST_SPELL = FourCC(AID.MASS_RECALL)
    local FORTI_SPELL = FourCC(AID.MASS_RECALL_FORTITUDE)

    local TP_EFFECT1 = [[Abilities\Spells\Human\MassTeleport\MassTeleportTo.mdl]]
    local TP_EFFECT2 = [[Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl]]

    ---Stores the cancel callbacks for each cast by player.
    ---This is okay since each player can only has one hero that can cast the spell, and in a normal game, it's not
    ---possible for the spell to be cast again before the previous one finishes.
    ---@type table<player, function>
    local cast_cancels = {}

    RegisterSpellEffectEvent(CAST_SPELL, function()
        local caster = GetTriggerUnit()
        local p = GetOwningPlayer(caster)
        local x, y = GetSpellTargetX(), GetSpellTargetY()

        local aoe = GetAbilityAoe(caster, CAST_SPELL)
        local count = GetAbilityDur(caster, CAST_SPELL)

        -- Grab alive ally units sorted by distance.
        local candidates = GetUnitsInAoe(x, y, aoe, function(u)
            -- ally, alive, not self, not structure.
            return IsUnitAlly(u, p) and IsUnitAlive(u) and u ~= caster and not IsUnitType(u, UNIT_TYPE_STRUCTURE)
        end)
        table.sort(candidates, function(u1, u2)
            local function distance(x1, y1, x2, y2)
                return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
            end

            local u1x, u1y = GetUnitX(u1), GetUnitY(u1)
            local u2x, u2y = GetUnitX(u2), GetUnitY(u2)
            return distance(x, y, u1x, u1y) < distance(x, y, u2x, u2y)
        end)

        -- Grab first x units
        local targets = {}
        for i, u in ipairs(candidates) do
            targets[i] = u
            if (i == count) then
                break
            end
        end

        -- Eye candy.
        local effects = SyncedTable.create()
        effects[caster] = AddSpecialEffectTarget(TP_EFFECT1, caster, "origin")
        for _, u in ipairs(targets) do
            effects[u] = AddSpecialEffectTarget(TP_EFFECT1, u, "origin")
        end

        -- Proc.
        local timer_cancel = Timed.call(GetAbilityFollowThroughTime(caster, CAST_SPELL), function()
            for _, e in pairs(effects) do
                DestroyEffect(e)
            end

            for _, u in ipairs(targets) do
                SetUnitPosition(u, GetUnitX(caster), GetUnitY(caster))
                DestroyEffect(AddSpecialEffectTarget(TP_EFFECT2, u, "origin"))
            end

            if GetUnitAbilityLevel(caster, CAST_SPELL) == 2 then
                local dummy = CreateUnit(GetOwningPlayer(caster), DUMMY_ID, x, y, 0)
                ShowUnit(dummy, false)
                UnitApplyTimedLife(dummy, 1, 1)
                UnitAddAbility(dummy, FORTI_SPELL)
                for _, u in ipairs(targets) do
                    IssueTargetOrder(dummy, "innerfire", u)
                end
            end
        end)

        -- Cancel callback for interruption.
        cast_cancels[p] = function()
            for _, e in pairs(effects) do
                DestroyEffect(e)
            end
            ---@diagnostic disable-next-line: need-check-nil
            timer_cancel()
        end
    end)

    -- The only way to detect spell interruption is EVENT_PLAYER_UNIT_SPELL_ENDCAST. However, the event is fired when
    -- a cast finishes normally as well, making it impossible to distinguish between the two.
    -- According to https://www.hiveworkshop.com/threads/253908/post-2546516, EVENT_PLAYER_UNIT_SPELL_FINISH happens
    -- before EVENT_PLAYER_UNIT_SPELL_ENDCAST, which creates an opening - a finished cast will trigger the FINISH and
    -- ENDCAST event, whereas an interrupted cast will only trigger the ENDCAST event.
    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_SPELL_FINISH, function()
        if GetSpellAbilityId() == CAST_SPELL then
            cast_cancels[GetOwningPlayer(GetTriggerUnit())] = nil
        end
    end)

    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_SPELL_ENDCAST, function()
        local p = GetOwningPlayer(GetSpellAbilityUnit())
        if GetSpellAbilityId() == CAST_SPELL and cast_cancels[p] ~= nil then
            cast_cancels[p]()
            cast_cancels[p] = nil
        end
    end)
end)
