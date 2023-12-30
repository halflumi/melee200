---@alias float number
---@alias ArmorSoundType string
---@alias ArmorType string
---@alias AttackType string
---@alias MovementType string
---@alias WeaponSound string
---@alias WeaponType string

---@class AbilityDefinition
AbilityDefinition = _G.AbilityDefinition
---@class HeroDefinition
HeroDefinition = _G.HeroDefinition

---@param def AbilityTooltip
---@param max_level integer
---@overload fun(self: AbilityDefinition, def: AbilityTooltip)
function AbilityDefinition:setToolTips(def, max_level)
    if (max_level == nil) then
        max_level = 1
    end

    local level_str = function(str, level)
        -- Format level.
        local result, _ = string.gsub(str, "{v}", tostring(level))
        -- Format level functions.
        if def.funcTable then
            for i, f in ipairs(def.funcTable) do
                result, _ = string.gsub(result, "{f" .. i .. "}", f(level))
            end
        end
        return result
    end

    for i = 1, max_level do
        self:setTooltipNormal(i, level_str(def.tooltip, i))
        self:setTooltipNormalExtended(i, level_str(def.tooltipExtended, i))
    end

    if def.learn ~= nil then
        local s = level_str(def.learnExtended, 1) .. "|n"
        for i = 1, max_level do
            s = s .. "|n" .. level_str(def.learnExtendedLevel, i)
        end
        self:setTooltipLearn(def.learn)
        self:setTooltipLearnExtended(s)
    end
end

---@param level integer
---@param value string
function AbilityDefinition:setWardUnitType(level, value)
    ---@diagnostic disable-next-line: undefined-field
    self.def:setLvlDataString("hwdu", level, 0, value)
end

---@param count integer
function HeroDefinition:setRequierementsTiersUsed(count)
    ---@diagnostic disable-next-line: undefined-field
    self.def:setInt("urqc", count)
end
