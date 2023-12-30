local DUMMY_ID = FourCC(UID.CASTER_DUMMY)
local CAST_SPELL = FourCC(AID.RESONATING_BLADE)
local VISUAL_SPELL = FourCC(AID.RESONATING_BLADE_VISUAL)

local function max_soul(u)
    return GetAbilityAoe(u, CAST_SPELL)
end

local function ratio(u, level)
    local r = GetAbilityDur(u, CAST_SPELL)
    return r == 0.0 and 1.0 or r
end

RBSouls = { bonus = {}, souls = {} }

function RBSouls:soul(u)
    return self.souls[u] or 0
end

function RBSouls:is_max(u)
    return self:soul(u) >= max_soul(u)
end

function RBSouls:atk_bonus(u)
    return self.bonus[u] or 0
end

function RBSouls:reset_atk_bonus(u)
    self.bonus[u] = 0
end

function RBSouls:refresh_atk_bonus(u)
    self.bonus[u] = math.min(RBSouls:soul(u), max_soul(u)) // ratio(u)
end

function RBSouls:absorb(u, killed)
    local soul
    if (IsUnitType(killed, UNIT_TYPE_HERO)) then
        soul = 5 + GetHeroLevel(killed)
    else
        soul = GetUnitLevel(killed)
    end
    local lv = GetUnitAbilityLevel(u, CAST_SPELL)
    self.souls[u] = math.min(self:soul(u) + soul, max_soul(u))
    self.bonus[u] = self:soul(u) // ratio(u, lv)
end

OnInit.trig(function()
    -- Cache units with Resonating Blade by player. Every player can only has one such hero.
    ---@type table<player, unit>
    local Heroes = {}

    -- Display Souls:
    RegisterSpellEffectEvent(CAST_SPELL, function()
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0,
            "Frostmourne souls: " .. RBSouls:soul(GetTriggerUnit()))
    end)

    -- On kill.
    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_DEATH, function()
        if (IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE)) then
            return
        end

        -- Identify the hero.
        local hero = Heroes[GetOwningPlayer(GetKillingUnit())]
        if (hero == nil) then
            if (GetUnitAbilityLevel(GetKillingUnit(), CAST_SPELL) ~= 0) then
                hero = GetKillingUnit()
            elseif (GetUnitTypeId(GetKillingUnit()) == DUMMY_ID) then
                -- Take advantage of the fact that any player can only have one such hero.
                local unit_group = CreateGroup()
                GroupEnumUnitsOfPlayer(unit_group, GetOwningPlayer(GetKillingUnit()),
                    Condition(function()
                        return GetUnitAbilityLevel(GetFilterUnit(), CAST_SPELL) ~= 0
                    end)
                )
                hero = FirstOfGroup(unit_group)
                DestroyGroup(unit_group)
            end
            -- The kill is not done by the hero or his skills, or it is done by the hero's skills but the hero hasn't
            -- acquired Resonating Blade yet.
            if (hero == nil) then
                return
            end
            Heroes[GetOwningPlayer(hero)] = hero
        end

        if (RBSouls:is_max(hero)) then
            return
        end

        -- Add Souls.
        local atk = RBSouls:atk_bonus(hero)
        RBSouls:absorb(hero, GetDyingUnit())
        AddUnitBonus(hero, BONUS_DAMAGE, RBSouls:atk_bonus(hero) - atk)

        -- Eye candy.
        local x, y = GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())
        local dummy = CreateUnit(GetOwningPlayer(hero), DUMMY_ID, x, y, 0)
        ShowUnit(dummy, false)
        UnitApplyTimedLife(dummy, 1, 1)
        UnitAddAbility(dummy, VISUAL_SPELL)
        IssueTargetOrder(dummy, "acidbomb", hero)
    end)

    -- Retraining.
    RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_USE_ITEM, function()
        if (GetItemTypeId(GetManipulatedItem()) == FourCC("tret")) then
            if (GetUnitAbilityLevel(GetManipulatingUnit(), CAST_SPELL) ~= 0) then
                -- Tome of Retraining might fail to reset the skill when it's on cooldown.
                -- Don't reset the bonus in that case.
                return
            end
            AddUnitBonus(GetManipulatingUnit(), BONUS_DAMAGE, -1 * RBSouls:atk_bonus(GetManipulatingUnit()))
            RBSouls:reset_atk_bonus(GetManipulatingUnit())
        end
    end)

    -- Learning.
    RegisterPlayerUnitEvent(EVENT_PLAYER_HERO_SKILL, function()
        if (GetLearnedSkill() == CAST_SPELL) then
            local hero = GetTriggerUnit()
            local prev_atk = RBSouls:atk_bonus(hero)
            RBSouls:refresh_atk_bonus(hero)
            AddUnitBonus(hero, BONUS_DAMAGE, RBSouls:atk_bonus(hero) - prev_atk)
        end
    end)
end)

-- Tests.
TEST("ZeroStates", function()
    local u = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)

    assert(max_soul(u) == 0)
    assert(ratio(u) == 1.0)
    assert(RBSouls:soul(u) == 0)
    assert(RBSouls:atk_bonus(u) == 0)
    RBSouls:refresh_atk_bonus(u)
    assert(RBSouls:atk_bonus(u) == 0)

    RemoveUnit(u)
end)

TEST("NoAbsorbWithoutSkill", function()
    local u = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)
    local target = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)

    RBSouls:absorb(u, target)
    assert(RBSouls:soul(u) == 0)
    assert(RBSouls:atk_bonus(u) == 0)

    RemoveUnit(u)
    RemoveUnit(target)
end)

TEST("Absorb", function()
    local u = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)
    local target = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)

    UnitAddAbility(u, CAST_SPELL)
    RBSouls:absorb(u, target)
    assert(RBSouls:soul(u) == 2)
    assert(RBSouls:atk_bonus(u) == RBSouls:soul(u) // ratio(u))

    RemoveUnit(u)
    RemoveUnit(target)
end)

TEST("NoAbsorbWhenMax", function()
    local u = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)
    local target = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)

    UnitAddAbility(u, CAST_SPELL)
    local max = max_soul(u)
    RBSouls.souls[u] = max
    RBSouls:absorb(u, target)
    assert(RBSouls:soul(u), max)
    assert(RBSouls:atk_bonus(u) == max // ratio(u))

    RemoveUnit(u)
    RemoveUnit(target)
end)

TEST("Reset", function()
    local u = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)
    local target = CreateUnit(Player(0), FourCC("hfoo"), 0, 0, 0)

    UnitAddAbility(u, CAST_SPELL)
    RBSouls:absorb(u, target)
    RBSouls:reset_atk_bonus(u)
    assert(RBSouls:soul(u) == 2)
    assert(RBSouls:atk_bonus(u) == 0)

    RemoveUnit(u)
    RemoveUnit(target)
end)
