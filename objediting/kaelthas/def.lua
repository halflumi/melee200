MASS_BANISH = {
    -- Stats
    MAX_LEVEL = 5,
    AOE = function(x) return 150 end,
    CAST_RANGE = 800,
    CD = 8,
    COST = function(x) return 75 - 15 * (x - 1) end,
    DUR = function(x) return 8 + 2 * (x - 1) end,
    DUR_HERO = function(x) return 4 + (x - 1) end,
}
-- Texts
MASS_BANISH.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Mass Banish (|cffffcc00W|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Turns non-mechanical units in a target area ethereal and slows their movement speed by <{1},DataA{v},%>% for <{1},Dur{v}> seconds (heroes <{1},HeroDur{v}> seconds). Ethereal creatures cannot attack, but they can cast spells and certain spells cast upon them will have a greater effect." ..
        "|n" ..
        "|n|cffffdeadAoE: <{2},Area{v}> units|r" ..
        "|n|cffffdeadCast Range: <{2},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{2},Cool{v}> seconds|r",
        AID.MASS_BANISH_IMPL, AID.MASS_BANISH
    ), FormatString(
        [=[Learn Mass Banish (|cffffcc00W|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Turns non-mechanical units in a target area ethereal and slows their movement speed by <{1},DataA{v},%>% for a short duration. Ethereal creatures cannot attack, but they can cast spells and certain spells cast upon them will have a greater effect.",
        AID.MASS_BANISH_IMPL
    ), FormatString(
        "|cffffcc00Level {v}|r - <{2},Cost{v}> mana, lasts <{1},Dur{v}> seconds.",
        AID.MASS_BANISH_IMPL, AID.MASS_BANISH
    )
)

STEAL_MANA = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNSpellSteal.blp]],
    -- Stats
    MAX_LEVEL = 5,
    CAST_RANGE = 650,
    CD = function(x) return 12 - (x - 1) end,
    COST = 10,
    STEAL = function(x) return 30 + 15 * (x - 1) end,
}
-- Texts
STEAL_MANA.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Steal Mana (|cffffcc00E|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Steals <{1},DataA{v}> points of mana from a target unit and gives it to the Hero." ..
        "|n|cffffff00Can steal mana from friendly units.|r" ..
        "|n" ..
        "|n|cffffdeadCast Range: <{1},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.STEAL_MANA
    ), FormatString(
        [=[Learn Steal Mana (|cffffcc00E|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Steals mana from a target unit and gives it to the Hero." ..
        "|n|cffffff00Can steal mana from friendly units.|r"
    ), FormatString(
        "|cffffcc00Level {v}|r - <{1},Cool{v}> seconds cooldown, steals <{1},DataA{v}> points of mana.",
        AID.STEAL_MANA
    )
)

MANA_BREATHE = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNManaBreathe.blp]],
    -- Stats
    CAST_RANGE = 800,
    CD = 0,
    COST = 0,
    DUR = 10,
    TARNS = 15, -- Proc twice per second.
}
-- Texts
MANA_BREATHE.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        "Mana Breathe (|cffffcc00F|r)"
    ), FormatString(
        "Transfers {f1} mana per second to an ally." ..
        "|nLasts <{1},Dur1> seconds.",
        AID.MANA_BREATHE
    ), {
        function(x) return tostring(2 * MANA_BREATHE.TARNS) end
    }
)

FLOATING_CHAOS = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNSphereOfFire.blp]],
    MDX_FIREBALL = [[Models\OrbFireX.mdx]],
    MDX_PROJ = [[Models\FireboltRoughMinor.mdx]],
    -- Stats
    MAX_LEVEL = 5,
    CAST_RANGE = 600,
    CD = 12,
    COST = 100,
    -- Fireball stats
    DMG = function(x) return 40 + 20 * (x - 1) end,
    DUR = function(x) return 8 + (x - 1) end,
    RANGE = 600,
}
-- Texts
FLOATING_CHAOS.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Floating Chaos (|cffffcc00Q|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Summons a floating fiery ball that shoots at enemies within {f3} units once per second. Each shot deals {f1} damage." ..
        "|nLasts {f2} seconds." ..
        "|n" ..
        "|n|cffffdeadCast Range: <{1},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.FLOATING_CHAOS
    ), FormatString(
        [=[Learn Floating Chaos (|cffffcc00Q|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Summons a floating fiery ball that shoots at enemies within {f3} units once per second."
    ), FormatString(
        "|cffffcc00Level {v}|r - {f1} damage per shot, lasts {f2} seconds."
    ), {
        function(x) return FLOATING_CHAOS.DMG(x) end,
        function(x) return FLOATING_CHAOS.DUR(x) end,
        function(x) return FLOATING_CHAOS.RANGE end,
    }
)
