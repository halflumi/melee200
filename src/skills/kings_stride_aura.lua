OnInit.trig(function()
    local MAIN_SKILL = FourCC(AID.KING_STRIDE_AURA)
    local SUB_SKILLS = {
        FourCC(AID.KING_STRIDE_AURA_HERO_ATK),
        FourCC(AID.KING_STRIDE_AURA_UNIT_ATK),
        FourCC(AID.KING_STRIDE_AURA_UNIT_DEF)
    }

    RegisterPlayerUnitEvent(EVENT_PLAYER_HERO_SKILL, function()
        if (GetLearnedSkill() == MAIN_SKILL) then
            if (GetUnitAbilityLevel(GetTriggerUnit(), MAIN_SKILL) == 1) then
                for _, skill in ipairs(SUB_SKILLS) do
                    UnitAddAbility(GetTriggerUnit(), skill)
                    BlzUnitHideAbility(GetTriggerUnit(), skill, true)
                end
            else
                for _, skill in ipairs(SUB_SKILLS) do
                    IncUnitAbilityLevel(GetTriggerUnit(), skill)
                end
            end
        end
    end)

    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_USE_ITEM, function()
        if (GetItemTypeId(GetManipulatedItem()) == FourCC("tret")) then
            for _, skill in ipairs(SUB_SKILLS) do
                UnitRemoveAbility(GetManipulatingUnit(), skill)
            end
        end
    end)
end)
