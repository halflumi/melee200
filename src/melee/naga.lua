OnInit.map(function()
    for i = 0, bj_MAX_PLAYERS - 1 do
        local p = Player(i)
        if (GetPlayerController(p) == MAP_CONTROL_USER) then
            if (IsPlayerRacePrefSet(p, RACE_PREF_RANDOM)) then

            end
        end
    end
end)
