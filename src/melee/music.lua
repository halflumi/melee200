OnInit.trig(function()
    local BGM_LIST = {
        [[Sound\Music\mp3Music\Human1.mp3]],
        [[Sound\Music\mp3Music\Human2.mp3]],
        [[Sound\Music\mp3Music\Human3.mp3]],
        [[Sound\Music\mp3Music\HumanX1.mp3]],
        [[Sound\Music\mp3Music\NightElf1.mp3]],
        [[Sound\Music\mp3Music\NightElf2.mp3]],
        [[Sound\Music\mp3Music\NightElf3.mp3]],
        [[Sound\Music\mp3Music\NightElfX1.mp3]],
        [[Sound\Music\mp3Music\Orc1.mp3]],
        [[Sound\Music\mp3Music\Orc2.mp3]],
        [[Sound\Music\mp3Music\Orc3.mp3]],
        [[Sound\Music\mp3Music\OrcX1.mp3]],
        [[Sound\Music\mp3Music\Undead1.mp3]],
        [[Sound\Music\mp3Music\Undead2.mp3]],
        [[Sound\Music\mp3Music\Undead3.mp3]],
        [[Sound\Music\mp3Music\UndeadX1.mp3]],
        [[Sound\Music\mp3Music\ArthasTheme.mp3]],
        [[Sound\Music\mp3Music\BloodElfTheme.mp3]],
        [[Sound\Music\mp3Music\NagaTheme.mp3]]
    }

    local function music_name(f)
        return string.match(f, "([^\\/]*)%.mp3")
    end

    -- Chat command.
    local t = CreateTrigger()
    for i = 0, bj_MAX_PLAYERS - 1 do
        TriggerRegisterPlayerChatEvent(t, Player(i), "-music", false)
    end
    TriggerAddAction(t, function()
        if GetTriggerPlayer() ~= GetLocalPlayer() then
            return
        end

        local cmd = GetEventPlayerChatString()
        if cmd == "-music" then
            PlayMusic(table.concat(BGM_LIST, ";"))
            return
        end

        local music = string.sub(cmd, 8)
        for _, v in ipairs(BGM_LIST) do
            if string.lower(music_name(v)) == string.lower(music) then
                PlayMusic(v)
                break
            end
        end
    end)

    -- F9 help.
    local info = CreateQuest()
    QuestSetRequired(info, true)
    QuestSetDiscovered(info, true)
    QuestSetIconPath(info, "ReplaceableTextures\\CommandButtons\\BTNHolyNote.blp")
    QuestSetTitle(info, "Music Command")
    local s = "-music [xx]\n" ..
        "Play specific music in place of the current one.\n" ..
        "Entering \"-music\" uses all available music as a playlist.\n" ..
        "Available music:\n"
    for _, v in ipairs(BGM_LIST) do
        s = s .. string.lower(music_name(v)) .. "\n"
    end
    QuestSetDescription(info, s)
end)
