OnInit.trig(function()
    local t = CreateTrigger()
    for i = 0, bj_MAX_PLAYERS - 1 do
        TriggerRegisterPlayerChatEvent(t, Player(i), "-fov ", false)
        -- Set the starting FoV to 1800.
        SetCameraFieldForPlayer(Player(i), CAMERA_FIELD_TARGET_DISTANCE, 1800.00, 0)
    end
    TriggerAddAction(t, function()
        local cmd = GetEventPlayerChatString()
        local fov = tonumber(string.sub(cmd, 6))
        if fov then
            SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, fov, 1.00)
        end
    end)

    -- F9 help.
    local info = CreateQuest()
    QuestSetRequired(info, true)
    QuestSetDiscovered(info, true)
    QuestSetIconPath(info, "ReplaceableTextures\\CommandButtons\\BTNMarine.blp")
    QuestSetTitle(info, "FoV Command")
    QuestSetDescription(info,
        "-fov xx\n" ..
        "Adjust game camera's view distance.\n" ..
        "The view distance starts at 1800 by default.\n" ..
        "Entering \"-fov 1650\" would set the view distance back to the vanilla setting."
    )
end)
