OnInit.trig(function()
    local t = CreateTrigger()
    for i = 0, bj_MAX_PLAYERS - 1 do
        if (GetPlayerController(Player(i)) == MAP_CONTROL_COMPUTER) then
            SetPlayerHandicapBJ(Player(i), 200.00)
            DebugPrint("Player " .. (i + 1) .. " handicap set to 200.")
        end
    end
end)
