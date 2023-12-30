OnInit.map(function()
    for i = 0, bj_MAX_PLAYERS - 1 do
        if GetPlayerController(Player(i)) == MAP_CONTROL_USER then
            local heroes = {
                "Hpal", -- Paladin
                "Hamg", -- Archmage
                "Hmkg", -- Mountain King
                "Hblm", -- Blood Mage
                "Obla", -- Blademaster
                "Ofar", -- Far Seer
                "Otch", -- Tauren Chieftain
                "Oshd", -- Shadow Hunter
                "Udea", -- Death Knight
                "Ulic", -- Lich
                "Udre", -- Dreadlord
                "Ucrl", -- Crypt Lord
                "Ekee", -- Keeper of the Grove
                "Emoo", -- Priestess of the Moon
                "Edem", -- Demon Hunter
                "Ewar", -- Warden
                "Nbrn", -- Dark Ranger
                "Nfir", -- Firelord
                "Nplh", -- Pit Lord
                "Npbm", -- Beastmaster
                "Nbst", -- Goblin Tinker
                "Nalc", -- Alchemist
                "Nngs", -- Naga Sea Witch
                "Ntin" -- Pandaren Brewmaster
            }
            for _, hero in ipairs(heroes) do
                SetPlayerTechMaxAllowed(Player(i), FourCC(hero), 0)
            end
        end
    end
end)
