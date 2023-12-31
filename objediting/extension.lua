---@alias float number
---@alias ArmorSoundType string
---@alias ArmorType string
---@alias AttackType string
---@alias MovementType string
---@alias Race string
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

---@param race Race
function HeroDefinition:applyMeleeStats(race)
    self:setAttack1DamageBase(0)
    self:setDefenseBase(0)
    self:setHitPointsRegenerationRate(0.25)
    self:setManaInitialAmount(100)
    self:setManaMaximum(0)
    self:setManaRegeneration(0.01)

    self:setBuildTime(55)
    self:setFoodCost(5)
    self:setGoldCost(425)
    self:setLumberCost(100)
    self:setRepairLumberCost(100)
    self:setRepairTime(55)
    self:setRequirementsTiersUsed(3)

    if race == Race.Human then
        self:setRequierementsForTier(2, "hkee")
        self:setRequierementsForTier(3, "hcas")
    elseif race == Race.Orc then
        self:setRequierementsForTier(2, "ostr")
        self:setRequierementsForTier(3, "ofrt")
    elseif race == Race.Undead then
        self:setHitPointsRegenerationRate(2)
        self:setHitPointsRegenerationType("blight")
        self:setRequierementsForTier(2, "unp1")
        self:setRequierementsForTier(3, "unp2")
    elseif race == Race.Nightelf then
        self:setHitPointsRegenerationRate(0.5)
        self:setHitPointsRegenerationType("night")
        self:setRequierementsForTier(2, "etoa")
        self:setRequierementsForTier(3, "etoe")
    elseif race == Race.Creeps then
        self:setRequirements("TALT")
        self:setRequierementsForTier(2, "TWN2,TALT")
        self:setRequierementsForTier(3, "TWN3,TALT")
        self:setStockMaximum(1)
        self:setStockReplenishInterval(0)
        self:setStockStartDelay(135)
    else
        error("Invalid hero race: " .. race)
    end
end

---@param count integer
function HeroDefinition:setRequirementsTiersUsed(count)
    ---@diagnostic disable-next-line: undefined-field
    self.def:setInt("urqc", count)
end
