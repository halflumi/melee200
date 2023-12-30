OnInit.map(function()
    for i = 0, bj_MAX_PLAYERS - 1 do
        if (GetPlayerController(Player(i)) == MAP_CONTROL_COMPUTER) then
            local maybe_defeat = function()
                if GetPlayerUnitCount(Player(i), false) == 0 then
                    RemovePlayer(Player(i), PLAYER_GAME_RESULT_DEFEAT)
                end
            end
            RegisterPlayerUnitEventForPlayer(EVENT_PLAYER_UNIT_DEATH, maybe_defeat, Player(i))
        end
    end
end)
