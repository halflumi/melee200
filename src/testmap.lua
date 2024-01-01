OnInit.trig(function()
    -- @debug@
    MeleeInitVictoryDefeat()
    MeleeStartingHeroLimit()
    MeleeStartingUnits()

    SetPlayerAlliance(Player(1), Player(0), ALLIANCE_SHARED_VISION, true)
    SetPlayerAlliance(Player(1), Player(0), ALLIANCE_SHARED_CONTROL, true)
    SetPlayerAlliance(Player(1), Player(0), ALLIANCE_SHARED_ADVANCED_CONTROL, true)
    SetPlayerAlliance(Player(14), Player(0), ALLIANCE_SHARED_VISION, true)
    SetPlayerAlliance(Player(14), Player(0), ALLIANCE_SHARED_CONTROL, true)
    SetPlayerAlliance(Player(14), Player(0), ALLIANCE_SHARED_ADVANCED_CONTROL, true)
    -- @end-debug@
end)

OnInit.map(function()
    -- @debug@
    SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_FOOD_CAP, 100)
    SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_GOLD, 10000)
    SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_LUMBER, 10000)

    local u

    -- Origin.
    u = CreateUnit(Player(0), FourCC(UID.ARTHAS), 0, 0, 0)
    SetHeroLevel(u, 20, false)
    SetUnitBonus(u, BONUS_INTELLIGENCE, -17)
    SetUnitBonus(u, BONUS_MANA, 10000)
    SetUnitState(u, UNIT_STATE_MANA, 0)
    SetUnitHealth(u, 0.1)
    u = CreateUnit(Player(0), FourCC(UID.ANTONIDAS), 0, 0, 0)
    SetHeroLevel(u, 20, false)
    u = CreateUnit(Player(0), FourCC(UID.KAELTHAS), 0, 0, 0)
    SetHeroLevel(u, 20, false)
    SetUnitHealth(u, 0.1)
    SetUnitState(u, UNIT_STATE_MANA, 200)

    CreateItem(FourCC("tret"), 100, 0)

    -- East.
    CreateUnit(Player(0), FourCC("halt"), -400, 200, 270)
    CreateUnit(Player(0), FourCC("eate"), -400, -200, 270)

    CreateUnit(Player(1), FourCC("hmpr"), -1400, 0, 0)
    CreateUnit(Player(1), FourCC("hdhw"), -1400, 0, 0)
    CreateUnit(Player(1), FourCC("Hmkg"), -1600, 0, 0)
    CreateUnit(Player(1), FourCC("hwtw"), -1800, 0, 0)

    -- North.
    CreateUnit(Player(0), FourCC("hgtw"), 0, 400, 0)
    CreateUnit(Player(0), FourCC("ngol"), 0, 800, 270)

    -- West.
    for i = 1, 40 do
        u = CreateUnit(Player(14), FourCC("hfoo"), 1800, 0, 0)
        SetUnitHealth(u, 0.1)
    end

    -- South.
    local tx, ty = 0, -800
    CreateDestructable(FourCC("LTcr"), tx, ty, 270, 1, 0)
    local t = { -1, 1 }
    for _, i in ipairs(t) do
        for _, j in ipairs(t) do
            local x, y = tx + 100 * i, ty + 100 * j
            CreateDestructable(FourCC("LTlt"), x, y, 270, 1, 0)
        end
    end

    for i = 1, 12 do
        u = CreateUnit(Player(0), FourCC("hfoo"), 0, -1200, 0)
        SetUnitHealth(u, 0.1)
    end

    -- @end-debug@
end)

OnInit.final(function()
    -- @debug@
    local g = CreateGroup()
    GroupEnumUnitsOfPlayer(g, Player(1),
        Condition(function()
            local ut = GetUnitTypeId(GetFilterUnit())
            return ut == FourCC("uaco") or ut == FourCC("ugho") or ut == FourCC("unpl")
        end)
    )
    ForGroup(g, function() RemoveUnit(GetEnumUnit()) end)
    DestroyGroup(g)
    -- @end-debug@
end)
