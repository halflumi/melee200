OnInit.trig(function()
    local ABIL = FourCC(AID.SPIRITUAL_FIRE_BALL)

    local FEEDBACK_EFFECT = [[Abilities\Spells\Human\Feedback\ArcaneTowerAttack.mdl]]

    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_DAMAGED, function()
        local abil = BlzGetUnitAbility(GetEventDamageSource(), ABIL)
        if abil ~= nil and BlzGetEventDamageType() == DAMAGE_TYPE_NORMAL then
            local u = GetTriggerUnit()
            if (IsUnitType(u, UNIT_TYPE_STRUCTURE)) then
                return
            end

            local mana = GetUnitState(u, UNIT_STATE_MANA)
            if mana < 1 then
                return
            end

            local pct = BlzGetAbilityRealLevelField(abil, ABILITY_RLF_AREA_OF_EFFECT, 0)
            local dmg = GetEventDamage() * (IsUnitType(u, UNIT_TYPE_HERO) and pct * 0.5 or pct)
            dmg = math.min(dmg, mana)
            SetUnitState(u, UNIT_STATE_LIFE, math.max(GetUnitState(u, UNIT_STATE_LIFE) - dmg, 1))
            SetUnitState(u, UNIT_STATE_MANA, mana - dmg)
            DestroyEffect(AddSpecialEffectTarget(FEEDBACK_EFFECT, u, "origin"))
        end
    end)
end)
