OnInit.trig(function()
    local t = CreateTrigger()
    for i = 0, bj_MAX_PLAYERS - 1 do
        TriggerRegisterPlayerEventLeave(t, Player(i))
    end
    TriggerAddAction(t, function()
        if (GetPlayerController(GetTriggerPlayer()) == MAP_CONTROL_USER) then
            DisplayTextToForce(GetPlayersAll(), GetPlayerName(GetTriggerPlayer()) .. " has left the game.")
        end
    end)
end)
