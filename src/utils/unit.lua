---@param u unit
---@param duration number
function UnitApplyGenericTimedLife(u, duration)
    UnitApplyTimedLife(u, FourCC("BTLF"), duration)
end

---@param u unit
function IsUnitValid(u)
    return GetUnitTypeId(u) ~= 0
end

---@param unit unit
function IsUnitAlive(unit)
    return IsUnitValid(unit) and not IsUnitType(unit, UNIT_TYPE_DEAD)
end

---@param unit unit
---@param percentage number
function SetUnitHealth(unit, percentage)
    SetUnitState(unit, UNIT_STATE_LIFE, GetUnitState(unit, UNIT_STATE_MAX_LIFE) * percentage)
end
