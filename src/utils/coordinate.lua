---@param a_x number
---@param a_y number
---@param b_x number
---@param b_y number
---@return number
function AngleBetweenPointsXY(a_x, a_y, b_x, b_y)
    return bj_RADTODEG * Atan2(b_y - a_y, b_x - a_x)
end

---@param x number
---@param y number
---@param dist number
---@param angle number
---@return number, number
function PolarProjection(x, y, dist, angle)
    return x + dist * Cos(angle * bj_DEGTORAD), y + dist * Sin(angle * bj_DEGTORAD)
end

---@param x number
---@param y number
---@param range number
---@return number, number
function GetRandomPointInRange(x, y, range)
    local angle = math.random() * 2 * math.pi
    local radius = math.sqrt(math.random()) * range
    local dx = radius * math.cos(angle)
    local dy = radius * math.sin(angle)
    return x + dx, y + dy
end
