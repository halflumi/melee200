---@param x number
---@param y number
---@param range number
---@param filter? fun(unit: unit): boolean
---@return unit[]
function GetUnitsInAoe(x, y, range, filter)
    local tb = {}
    local g = CreateGroup()
    GroupEnumUnitsInRange(g, x, y, range + 128, nil)
    ForGroup(g, function()
        local u = GetEnumUnit()
        if IsUnitInRangeXY(u, x, y, range) and (filter == nil or filter(u)) then
            table.insert(tb, u)
        end
    end)
    DestroyGroup(g)
    return tb
end
