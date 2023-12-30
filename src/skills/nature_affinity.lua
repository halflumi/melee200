OnInit.trig(function()
    local ABIL = FourCC(AID.NATURE_AFFINITY)
    local LIFE_ABIL = FourCC(AID.NATURE_AFFINITY_LIFE)
    local MANA_ABIL = FourCC(AID.NATURE_AFFINITY_MANA)

    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_TRAIN_FINISH, function()
        local u = GetTrainedUnit()
        if BlzGetUnitAbility(u, ABIL) ~= nil then
            local range = GetAbilityAoe(u, ABIL)

            Timed.echo(0.5, function()
                if not IsUnitValid(u) then
                    return true
                end

                local near_tree = false
                local td = GetDestructablesInAoe(GetUnitX(u), GetUnitY(u), range)
                for _, d in ipairs(td) do
                    if IsDestructableTree(d) and GetDestructableLife(d) >= 1 then
                        near_tree = true
                        break;
                    end
                end

                if near_tree and BlzGetUnitAbility(u, LIFE_ABIL) == nil then
                    UnitAddAbility(u, LIFE_ABIL)
                    BlzUnitHideAbility(u, LIFE_ABIL, true)
                    UnitAddAbility(u, MANA_ABIL)
                elseif not near_tree and BlzGetUnitAbility(u, LIFE_ABIL) ~= nil then
                    UnitRemoveAbility(u, LIFE_ABIL)
                    UnitRemoveAbility(u, MANA_ABIL)
                end

                return false
            end)
        end
    end)
end)
