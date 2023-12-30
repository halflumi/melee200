---@param u unit
---@param abil integer
---@return number
function GetAbilityAoe(u, abil)
    local lv = GetUnitAbilityLevel(u, abil)
    if lv == 0 then
        return 0.0
    end
    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, abil), ABILITY_RLF_AREA_OF_EFFECT, lv - 1)
end

---@param u unit
---@param abil integer
---@return number
function GetAbilityDur(u, abil)
    local lv = GetUnitAbilityLevel(u, abil)
    if lv == 0 then
        return 0.0
    end
    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, abil), ABILITY_RLF_DURATION_NORMAL, lv - 1)
end

---@param u unit
---@param abil integer
---@return number
function GetAbilityDurHero(u, abil)
    local lv = GetUnitAbilityLevel(u, abil)
    if lv == 0 then
        return 0.0
    end
    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, abil), ABILITY_RLF_DURATION_HERO, lv - 1)
end

---@param u unit
---@param abil integer
---@return number
function GetAbilityFollowThroughTime(u, abil)
    local lv = GetUnitAbilityLevel(u, abil)
    if lv == 0 then
        return 0.0
    end
    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, abil), ABILITY_RLF_FOLLOW_THROUGH_TIME, lv - 1)
end
