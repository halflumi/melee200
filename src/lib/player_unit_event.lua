--[[
/**************************************************************
*
*   RegisterPlayerUnitEvent
*   v5.1.0.1
*   By Magtheridon96
*   Lua version by Chopinski
*
*   I would like to give a special thanks to Bribe, azlier
*   and BBQ for improving this library. For modularity, it only
*   supports player unit events.
*
*   Functions passed to RegisterPlayerUnitEvent must either
*   return a boolean (false) or nothing. (Which is a Pro)
*
*   Warning:
*   --------
*
*       - Don't use TriggerSleepAction inside registered code.
*       - Don't destroy a trigger unless you really know what you're doing.
*
*   API:
*   ----
*
*       - function RegisterPlayerUnitEvent takes playerunitevent whichEvent, code whichFunction returns nothing
*           - Registers code that will execute when an event fires.
*       - function RegisterPlayerUnitEventForPlayer takes playerunitevent whichEvent, code whichFunction, player whichPlayer returns nothing
*           - Registers code that will execute when an event fires for a certain player.
*       - function GetPlayerUnitEventTrigger takes playerunitevent whichEvent returns trigger
*           - Returns the trigger corresponding to ALL functions of a playerunitevent.
*
**************************************************************/
]]--

do
    local trigger = {}

    ---@param e playerunitevent
    ---@param code function
    function RegisterPlayerUnitEvent(e, code)
        for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
            RegisterPlayerUnitEventForPlayer(e, code, Player(i))
        end
    end

    ---@param e playerunitevent
    ---@param code function
    ---@param player player
    function RegisterPlayerUnitEventForPlayer(e, code, player)
        if not trigger[player] then
            trigger[player] = {}
        end

        if not trigger[player][e] then
            trigger[player][e] = CreateTrigger()
            TriggerRegisterPlayerUnitEvent(trigger[player][e], player, e, nil)
        end

        TriggerAddCondition(trigger[player][e], Filter(code))
    end

    ---@param e playerunitevent
    ---@param player player
    function GetPlayerUnitEventTrigger(e, player)
        return trigger[player][e]
    end
end
