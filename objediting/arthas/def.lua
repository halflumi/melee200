AREA_HOLY_LIGHT = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNHolyBolt.tga]],
    -- Stats
    MAX_LEVEL = 5,
    AOE = 200.0,
    CD = 6.0,
    COST = 65,
    HEAL_OTHERS = function(lv) return 45.0 + lv * 85.0 end,
    HEAL_SELF = function(lv) return lv * 200.0 end,
    RNG = 800.0,
}
-- Texts
AREA_HOLY_LIGHT.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Area Holy Light (|cffffcc00Q|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Holy lights that can heal friendly living units for <{1},DataA{v}> hit points or deal half damage to enemy Undead units in the target area. A stronger holy light will heal Arthas himself for <{2},DataA{v}> hit points no matter where and when the spell is casted." ..
        "|n" ..
        "|n|cffffdeadAoE: <{3},Area{v}> units|r" ..
        "|n|cffffdeadCooldown: <{3},Cool{v}> seconds" ..
        "|nCast Range: <{3},Rng{v}> units|r",
        AID.AREA_HOLY_LIGHT_AREA, AID.AREA_HOLY_LIGHT_SELF, AID.AREA_HOLY_LIGHT
    ), FormatString(
        [=[Learn Area Holy Light (|cffffcc00Q|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Holy lights that can heal friendly living units for or deal half damage to enemy Undead units in the target area. A stronger holy light will heal Arthas himself no matter where and when the spell is casted."
    ), FormatString(
        "|cffffcc00Level {v}|r - Heals Arthas for <{1},DataA{v}> and friendly units for <{2},DataA{v}> hit points.",
        AID.AREA_HOLY_LIGHT_SELF, AID.AREA_HOLY_LIGHT_AREA
    )
)

RESONATING_BLADE = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNArthasLifeDrain.blp]],
    -- Stats
    MAX_LEVEL = 5,
    SOUL = function(lv) return lv * 80 end,
    SOUL_ATK_RATIO = 2.0,
}
-- Texts
RESONATING_BLADE.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Resonating Blade (|cffffcc00W|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "When Arthas kills an unit, Frostmourne will devour its soul with a maximum limit of <{1},Area{v}>. The soul count of an unit is depending on the level of the unit (heroes are worth more souls). Every 2 souls Frostmourne devours will enhance its power." ..
        "|n|cffffff00Tome of Retraining will not reset the devoured souls.|r" ..
        "|n" ..
        "|n|cffffdeadCast the skill to display how many souls Frostmourne has devoured.|r",
        AID.RESONATING_BLADE
    ), FormatString(
        [=[Learn Resonating Blade (|cffffcc00W|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "When Arthas kills an unit, Frostmourne will devour its soul. The soul count of an unit is depending on the level of the unit (heroes are worth more souls). Every 2 souls Frostmourne devours will enhance its power."
    ), FormatString(
        [[|cffffcc00Level {v}|r - Can devour a maximum of <{1},Area{v}> souls.]], AID.RESONATING_BLADE
    )
)

KING_STRIDE_AURA = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNKingStrideAura.blp]],
    ICON_PAS = [[ReplaceableTextures\PassiveButtons\PASBTNKingStrideAura.blp]],
    MDX = [[Models\KingstrideAura.mdx]],
    -- Stats
    MAX_LEVEL = 5,
    AOE = 900.0,
    ATK = function(lv) return lv * 0.05 end,
    DEF = function(lv) return lv * 1.0 end,
}
-- Texts
KING_STRIDE_AURA.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[King Stride Aura - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Gives <{1},DataA{v}> additional armor and <{2},DataA{v},%>% attack damage to nearby friendly units and structures. Heroes receive 3 times the bonuses." ..
        "|n" ..
        "|n|cffffdeadAoE: <{1},Area{v}> units|r",
        AID.KING_STRIDE_AURA_UNIT_DEF, AID.KING_STRIDE_AURA_UNIT_ATK
    ), FormatString(
        [=[Learn King Stride Aura (|cffffcc00E|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Gives additional armor and attack damage to nearby friendly units and structures. Heroes receive 3 times the bonuses."
    ), FormatString(
        [[|cffffcc00Level {v}|r - <{1},DataA{v}> armor and <{2},DataA{v},%>% attack damage.]],
        AID.KING_STRIDE_AURA_UNIT_DEF, AID.KING_STRIDE_AURA_UNIT_ATK
    )
)

FROST_BLAST = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNFrostmourne2.blp]],
    -- Stats
    MAX_LEVEL = 2,
    AOE = 130.0,
    BONUS_PER_X_SOULS = 80,
    COST = function(lv) return 125 + ((lv - 1) * 25) end,
    DAMAGE = function(lv) return 200 + ((lv - 1) * 100) end,
}
-- Texts
FROST_BLAST.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Frost Blast (|cffffcc00R|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Use Frostmourne to slash out a line of frost nova strikes towards target direction, dealing <{1},DataA{v}> damage to any enemy units along the line. Affected units also get slowed by the frost novas for <{1},Dur{v}> seconds (heroes <{1},HeroDur{v}> seconds). Frostmourne initially unleashes 5 nova strikes. The more souls it devours, the more frost strikes it unleashes." ..
        "|n" ..
        "|n|cffffdeadCast Range: <{2},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{2},Cool{v}> seconds|r" ..
        "|n|cffffdeadNova AoE: <{1},Area{v}> units|r",
        AID.FROST_BLAST_NOVA, AID.FROST_BLAST
    ), FormatString(
        [=[Learn Frost Blast (|cffffcc00R|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Use Frostmourne to slash out a line of frost nova strikes towards target direction, dealing damage to any enemy units along the line. Affected units also get slowed by the frost novas for <{1},Dur{v}> seconds (heroes <{1},HeroDur{v}> seconds). Frostmourne initially unleashes 5 nova strikes. The more souls it devours, the more frost strikes it unleashes.",
        AID.FROST_BLAST_NOVA
    ), FormatString(
        [[|cffffcc00Level {v}|r - <{1},DataA{v}> nova damage.]], AID.FROST_BLAST_NOVA
    )
)

PLOT_ARMOR = {
    -- Arts
    ICON = [[ReplaceableTextures\PassiveButtons\PASBTNArthas.blp]],
    ICON2 = [[ReplaceableTextures\PassiveButtons\PASBTNArthas2.blp]],
    MDX = [[Models\DivineBarrier.mdx]],
    -- Stats
    DUR = 5.0,
    REGEN = 10.0,
}
-- Texts
PLOT_ARMOR.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        "Plot Armor"
    ), FormatString(
        "Activated upon taking lethal damage, granting immunity to all forms of damage and <{1},DataD{v}> hit point regeneration for <{1},HeroDur{v}> seconds." ..
        "|n" ..
        "|n|cffffff00Can only be activated once.|r",
        AID.PLOT_ARMOR_BUFF
    )
)
PLOT_ARMOR.TOOLTIPS2 = AbilityTooltip:new(
    FormatString(
        "Plot Armor"
    ), FormatString(
        "Plot Armor has been activated once and lost its effect."
    )
)
