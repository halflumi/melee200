-- https://www.hiveworkshop.com/threads/308674/post-3294104
OnInit.trig(function()
    local heroes = {
        UID.ARTHAS,
        UID.ANTONIDAS,
        UID.FURION,
        UID.KAELTHAS,
    }

    for i = 0, bj_MAX_PLAYERS - 1 do
        for _, hero in ipairs(heroes) do
            SetPlayerTechMaxAllowed(Player(i), FourCC(hero), 1)
        end
    end
end)
