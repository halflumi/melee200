SPIRITUAL_FIRE_BALL = {
    -- Arts
    ICON = [[ReplaceableTextures\PassiveButtons\PASBTNBlueFireBolt.blp]],
    -- Stats
    FEEDBACK = 0.3
}
-- Texts
SPIRITUAL_FIRE_BALL.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        "Spiritual Fire Ball"
    ), FormatString(
        "Archmage's attacks destroy mana equal to {1}% (heroes {2}%) of the damage dealt against any unit, causing bonus damage equal to the mana destroyed." ..
        "|n" ..
        "|n|cffffff00Does not conflict with orb effects.|r",
        string.format("%d", SPIRITUAL_FIRE_BALL.FEEDBACK * 100),
        string.format("%d", SPIRITUAL_FIRE_BALL.FEEDBACK * 50)
    )
)

MANA_WARD = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNManaRegenTotem.tga]],
    MDX = [[Models\ManaWard.mdx]],
    -- Stats
    MAX_LEVEL = 5,
    AOE = function(x) return 200 + 25 * (x - 1) end,
    CAST_RANGE = 500,
    CD = 40,
    COST = 25,
    DURATION = function(x) return 25 end,
    HP = function(x) return 100 + 25 * (x - 1) end,
    REGEN = function(x) return 3 + 1 * (x - 1) end, -- Proc twice per second.
    REGEN_RANGE = 500,
}
-- Texts
MANA_WARD.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Mana Ward (|cffffcc00E|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Summons an immovable ward that replenishes mana of friendly non-mechanical units in <{1},Area{v}> radius by {f1} points per second." ..
        "|nLasts <{2},Dur{v}> seconds." ..
        "|n" ..
        "|n|cffffdeadCast Range: <{1},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.MANA_WARD, AID.MANA_WARD_SUMMON
    ), FormatString(
        [=[Learn Mana Ward (|cffffcc00E|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Summons an immovable ward that replenishes mana of nearby friendly non-mechanical units." ..
        "|nLasts <{1},Dur1> seconds.",
        AID.MANA_WARD_SUMMON
    ), FormatString(
        [[|cffffcc00Level {v}|r - {f1} mana points per second in <{1},Area{v}> radius.]],
        AID.MANA_WARD
    ), {
        function(x) return string.format("%d", MANA_WARD.REGEN(x) * 2) end
    }
)

BLOOD_ELEMENTAL = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNBloodElemental.tga]],
    MDX_UNIT = [[Models\BloodWaterElemental.mdl]],
    MDX_PROJ = [[Models\BloodWaterElementalMissile.mdl]],
    MDX_RAGE = [[Models\DarkFrenzyTarget005.mdl]],
    -- Stats
    MAX_LEVEL = 5,
    ATK = function(x) return 29 + 10 * (x - 1) end,
    CD = 30,
    COST = function(x) return 150 + 5 * (x - 1) ^ 2 end,
    DEF = function(x) return 2 end,
    DURATION = function(x) return 60 end,
    HP = function(x) return 700 + 225 * (x - 1) end,
    SCALE = function(x) return 0.9 + 0.1 * (x - 1) end,
    -- Rage
    RAGE_ICON = [[ReplaceableTextures\CommandButtons\BTNUnholyFrenzyRed.blp]],
    RAGE_BONUS = 0.5,
    RAGE_COST = 250,
    RAGE_DURATION = 10,
}
-- Texts
BLOOD_ELEMENTAL.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Summon Blood Elemental (|cffffcc00W|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Summons a blood elemental to attack the Archmage's enemies. Has {f1} hit points and {f2} base damage. " ..
        "|nLasts <{1},Dur{v}> seconds." ..
        "|n" ..
        "|n|cffffcc00Attacks land and air units.|r" ..
        "|n" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.SUMMON_BLOOD_ELEMENTAL
    ), FormatString(
        [=[Learn Summon Blood Elemental (|cffffcc00W|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Summons a blood elemental to attack the Archmage's enemies." ..
        "|nLasts <{1},Dur1> seconds." ..
        "|n" ..
        "|n|cffffcc00Attacks land and air units.|r",
        AID.SUMMON_BLOOD_ELEMENTAL
    ), FormatString(
        [[|cffffcc00Level {v}|r - <{1},Cost{v}> mana cost. {f1} hit points, {f2} base damage{f3}.]],
        AID.SUMMON_BLOOD_ELEMENTAL
    ), {
        function(x) return tostring(BLOOD_ELEMENTAL.HP(x)) end,
        function(x) return tostring(BLOOD_ELEMENTAL.ATK(x)) end,
        function(x) return x >= 4 and ", can cast Rage" or "" end
    }
)
BLOOD_ELEMENTAL.RAGE_TOOLTIPS = AbilityTooltip:new(
    FormatString(
        "|cffffcc00R|rage"
    ), FormatString(
        "Grants <{1},DataA{v},%>% faster attack rate for <{1},Dur{v}> seconds at the cost of |cffff0000<{2},Area{v}>|r hit points.",
        AID.BLOOD_ELEMENTAL_RAGE_ACTUAL, AID.BLOOD_ELEMENTAL_RAGE
    )
)

FROST_STORM = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNCMFF.blp]],
    MDX = [[Models\BlizzardII.mdx]],
    -- Stats
    MAX_LEVEL = 5,
    AOE = function(x) return 200 end,
    CAST_RANGE = 800,
    CD = 8,
    COST = 75,
    DMG = function(x) return 40 + 10 * (x - 1) end,
    WAVES = function(x) return 4 + (x - 1) end,
}
-- Texts
FROST_STORM.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Frost Storm (|cffffcc00Q|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Calls down <{1},DataA{v}> freezing ice shard waves; each wave deals <{1},DataB{v}> damage to units and structures in an area." ..
        "|n|cffffff00No friendly fire." ..
        "|n" ..
        "|n|cffffdeadAoe: <{1},Area{v}> units|r" ..
        "|n|cffffdeadCast Range: <{1},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.FROST_STORM
    ), FormatString(
        [=[Learn Frost Storm (|cffffcc00Q|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Calls down waves of freezing ice shards that damage units and structures in a target area." ..
        "|n|cffffff00No friendly fire.|r"
    ), FormatString(
        "|cffffcc00Level {v}|r - <{1},DataA{v}> waves at <{1},DataB{v}> damage each.",
        AID.FROST_STORM
    )
)

MASS_RECALL = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNPrayerOfHealing.blp]],
    MDX = [[Models\MagicShieldBlue.mdx]],
    -- Stats
    MAX_LEVEL = 2,
    AOE = function(x) return 200 + 100 * (x - 1) end,
    CD = 40,
    COST = function(x) return 100 + 50 * (x - 1) end,
    UNITS = function(x) return 6 + 6 * (x - 1) end,
    -- Armor Buff
    FORTI_DEF = 5,
    FORTI_DUR = 20
}
MASS_RECALL.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Mass Recall (|cffffcc00R|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Recalls <{1},Dur{v}> of the ally units within <{1},Area{v}> radius of the targeting location to the Archmage.{f1}" ..
        "|n" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r", AID.MASS_RECALL
    ), FormatString(
        [=[Learn Mass Recall (|cffffcc00R|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Recalls ally units near the targeting location to the Archmage."
    ), FormatString(
        "|cffffcc00Level {v}|r - <{1},Cost{v}> mana cost. Teleports <{1},Dur{v}> units within <{1},Area{v}> radius.{f2}",
        AID.MASS_RECALL
    ), {
        function(x)
            return x == 1 and "" or FormatString(
                " Recalled units have <{1},DataB1> increased base armor for <{1},Dur1> seconds.",
                AID.MASS_RECALL_FORTITUDE)
        end,
        function(x)
            return x == 1 and "" or FormatString(
                " Increase the armor of recalled units by <{1},DataB1> for <{1},Dur1> seconds.",
                AID.MASS_RECALL_FORTITUDE)
        end
    }
)
