OnInit.final(function()
    local function townhall(p)
        local unit_group = CreateGroup()
        GroupEnumUnitsOfPlayer(unit_group, p, Condition(function()
            return IsUnitType(GetFilterUnit(), UNIT_TYPE_TOWNHALL)
        end))
        local th = FirstOfGroup(unit_group)
        DestroyGroup(unit_group)
        return th
    end

    for i = 0, bj_MAX_PLAYERS - 1 do
        local th = townhall(Player(i))
        if th ~= nil then
            local x, y = GetUnitX(th), GetUnitY(th)
            for _, u in ipairs(GetUnitsInAoe(x, y, 800)) do
                if GetUnitTypeId(u) == FourCC("ugho") then
                    IssueImmediateOrder(u, "autoharvestlumber")
                else
                    IssueImmediateOrder(u, "autoharvestgold")
                end
            end
        end
    end
end)
