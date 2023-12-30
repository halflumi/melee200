---@class AbilityTooltip
AbilityTooltip = {}

---@param tooltip string
---@param tooltip_extended string
---@param learn string
---@param learn_extended string
---@param learn_extended_level string
---@param func_table? (fun(level: integer):string)[]
---@return AbilityTooltip
---@overload fun(self: AbilityTooltip, tooltip: string, tooltip_extended: string, func_table?: (fun(level: integer):string)[]): AbilityTooltip
function AbilityTooltip:new(tooltip, tooltip_extended, learn, learn_extended, learn_extended_level, func_table)
    ---@class AbilityTooltip
    local o = {}
    o.tooltip = tooltip
    o.tooltipExtended = tooltip_extended
    if learn ~= nil then
        if type(learn) == "string" then
            o.learn = learn
            o.learnExtended = learn_extended
            o.learnExtendedLevel = learn_extended_level
            o.funcTable = func_table
        elseif type(learn) == "table" then
            o.funcTable = learn
        end
    end
    return o
end

---@param ... string
---@return string
function CommaString(...)
    local args = { ... }
    return table.concat(args, ",")
end

---@param str string
---@param ... string
---@return string
function FormatString(str, ...)
    -- Sanity check.
    local placeholders = {}
    local seen = {}
    for s in string.gmatch(str, "{(%d+)}") do
        if not seen[s] then
            table.insert(placeholders, s)
            seen[s] = true
        end
    end
    table.sort(placeholders)
    for i = 1, #placeholders do
        if placeholders[i] ~= tostring(i) then
            error(string.format(
                "Unexpected placeholders {%s} in %s...",
                table.concat(placeholders, ","),
                string.sub(str, 1, 32)
            ))
        end
    end

    local args = { ... }
    assert(#args == #placeholders,
        string.format("Expected %d args, got %d in %s...", #placeholders, #args, string.sub(str, 1, 32))
    )
    for i, s in ipairs(args) do
        for p in string.gmatch(s, "{(%d+)}") do
            error(string.format("Placeholder {%s} found in arg %d: %s", p, i, s))
        end
    end
    -- Format.
    for i, v in ipairs(args) do
        str = string.gsub(str, "{" .. i .. "}", v)
    end
    return str
end

-- Tests.
assert(FormatString("{1}", "a"), "a")
assert(FormatString("{1} {2}", "a", "b"), "a b")
assert(FormatString("{2} {1}", "a", "b"), "b a")
