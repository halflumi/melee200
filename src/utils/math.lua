---@param count integer
---@return integer[]
function GenerateRandomSequence(count)
    local sequence = {}
    for i = 1, count do
        sequence[i] = i
    end
    for i = #sequence, 2, -1 do
        local j = math.random(i)
        sequence[i], sequence[j] = sequence[j], sequence[i]
    end
    return sequence
end
