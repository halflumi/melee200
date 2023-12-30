local tree_detector

---@param x number
---@param y number
---@param range number
---@return destructable[]
function GetDestructablesInAoe(x, y, range)
    local aoe = range + 128
    local rect = Rect(x - aoe, y - aoe, x + aoe, y + aoe)
    local results = {}
    EnumDestructablesInRect(rect, nil, function()
        local d = GetEnumDestructable()
        local dx, dy = GetDestructableX(d) - x, GetDestructableY(d) - y
        local distance = dx ^ 2 + dy ^ 2
        if distance <= range ^ 2 then
            table.insert(results, d)
        end
    end)
    RemoveRect(rect)
    return results
end

---@param d destructable
---@return boolean
function IsDestructableTree(d)
    if (tree_detector == nil) then
        tree_detector = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), FourCC("uloc"), 0, 0, 0)
        ShowUnit(tree_detector, false)
        UnitAddAbility(tree_detector, FourCC("Ahrl")) -- Ghoul Harvest ability.
        UnitRemoveAbility(tree_detector, FourCC("Amov")) -- Disable movement.
    end
    return IssueTargetOrderById(tree_detector, 852018, d)
end
