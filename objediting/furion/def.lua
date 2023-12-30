MASS_ENTANGLING_ROOTS = {
    -- Stats
    MAX_LEVEL = 5,
    AOE = function(x) return 150 end,
    CAST_RANGE = 800,
    CD = 12,
    COST = function(x) return 75 + 5 * (x - 1) end,
    DMG = function(x) return 12 + 2 * (x - 1) end,
    DUR = function(x) return 8 + 2 * (x - 1) end,
    DUR_HERO = function(x) return 3 + (x - 1) end,
}
-- Texts
MASS_ENTANGLING_ROOTS.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Mass Entangling Roots (|cffffcc00Q|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Causes roots to burst from the ground, immobilizing and disarming enemies in the target area for <{1},Dur{v}> seconds, and dealing <{1},DataA{v}> damage per second." ..
        "|n" ..
        "|n|cffffdeadAoe: <{2},Area{v}> units|r" ..
        "|n|cffffdeadCast Range: <{2},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{2},Cool{v}> seconds|r",
        AID.MASS_ENTANGLING_ROOTS_IMPL, AID.MASS_ENTANGLING_ROOTS
    ), FormatString(
        [=[Learn Mass Entangling Roots (|cffffcc00Q|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Causes roots to burst from the ground, immobilizing, disarming and damaging enemies in the target area temporarily."
    ), FormatString(
        "|cffffcc00Level {v}|r - <{1},Cost{v}> mana cost. <{2},DataA{v}> damage per second for <{2},Dur{v}> seconds.",
        AID.MASS_ENTANGLING_ROOTS, AID.MASS_ENTANGLING_ROOTS_IMPL
    )
)

ARMY_OF_NATURE = {
    -- Arts
    ICON_LIFE = [[ReplaceableTextures\CommandButtons\BTNTreeOfLife.blp]],
    ICON_LORE = [[ReplaceableTextures\CommandButtons\BTNAncientOfLore.blp]],
    MDX_LIFE = [[Models\SaplingOfLifeV1.03.mdx]],
    MDX_LORE = [[Models\SaplingOfLoreV1.02.mdx]],
    MDX_PROJ = [[Models\NatureBeam.mdx]],
    -- Stats
    MAX_LEVEL = 5,
    AMOUNT_MELEE = function(x) return x end,
    AMOUNT_RANGED = function(x) return x <= 4 and 1 or 2 end,
    CD = 30,
    COST = function(x) return 125 end,
    DUR = 60,
    -- Treants
    ATK_RANGE = 500,
    DEF_MELEE = 1,
    DEF_RANGED = 0,
    DMG_MELEE = 12,
    DMG_RANGED = 21,
    HP_MELEE = 450,
    HP_RANGED = 300,
}
-- Texts
ARMY_OF_NATURE.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Army of Nature (|cffffcc00W|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Raises <{1},DataA{v}> Treant of Life and <{2},DataA{v}> Treant of Lore for <{1},Dur{v}> seconds. Treant of Life has <{3},realHP> hit points and {f1} base attack damage. Treant of Lore has <{4},realHP> hit points and {f2} base attack damage." ..
        "|n" ..
        "|n|cffffcc00Attacks land/land and air units.|r" ..
        "|n" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.ARMY_OF_NATURE, AID.ARMY_OF_NATURE_CO_SUMMON,
        UID.TREANT_MELEE, UID.TREANT_RANGED
    ), FormatString(
        [=[Learn Army of Nature (|cffffcc00W|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Raises an army of Treants for <{1},Dur{v}> seconds. Treant of Life has <{2},realHP> hit points and {f1} base attack damage. Treant of Lore has <{3},realHP> hit points and {f2} base attack damage. Can learn Nature's Blessing." ..
        "|n" ..
        "|n|cffffcc00Attacks land/land and air units.|r",
        AID.ARMY_OF_NATURE, UID.TREANT_MELEE, UID.TREANT_RANGED
    ), FormatString(
        "|cffffcc00Level {v}|r - Raises <{1},DataA{v}> Treant of Life and <{2},DataA{v}> Treant of Lore.",
        AID.ARMY_OF_NATURE, AID.ARMY_OF_NATURE_CO_SUMMON
    ), {
        function(x) return tostring(ARMY_OF_NATURE.DMG_MELEE) end,
        function(x) return tostring(ARMY_OF_NATURE.DMG_RANGED) end
    }
)

PROTECTION_OF_NATURE = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNResistNature.blp]],
    MDX = [[Models\RejuvenationTargetGreen.mdx]],
    -- Stats
    MAX_LEVEL = 5,
    CAST_RANGE = 800,
    CD = 10,
    COST = function(x) return 60 end,
    DEF = function(x) return 4 + 2 * (x - 1) end,
    DUR = function(x) return 20 end,
    REGEN = function(x) return 15 + 10 * (x - 1) end,
}
-- Texts
PROTECTION_OF_NATURE.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Protection of Nature (|cffffcc00E|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Creates a shield of nature around a target friendly unit, adding <{1},DataB{v}> armor and healing the unit for {f1} hit points over <{1},Dur{v}> seconds." ..
        "|n" ..
        "|n|cffffdeadCast Range: <{2},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{2},Cool{v}> seconds|r",
        AID.PROTECTION_OF_NATURE_IMPL, AID.PROTECTION_OF_NATURE
    ), FormatString(
        [=[Learn Protection of Nature (|cffffcc00E|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Creates a shield of nature around a target friendly unit, adding armor and healing the unit over <{1},Dur{v}> seconds.",
        AID.PROTECTION_OF_NATURE_IMPL
    ), FormatString(
        "|cffffcc00Level {v}|r - Adds <{1},DataB{v}> armor. Heals {f1} hit points.",
        AID.PROTECTION_OF_NATURE_IMPL
    ), {
        function(x) return tostring(PROTECTION_OF_NATURE.REGEN(x) * PROTECTION_OF_NATURE.DUR(x)) end
    }
)

ANCIENT_REINCARNATION = {
    -- Arts
    ICON = [[ReplaceableTextures\CommandButtons\BTNAncientOfTheMoon.blp]],
    ICON_PAS = [[ReplaceableTextures\PassiveButtons\PASBTNHealingButterfliesFixed.blp]],
    ICON_AURA = [[ReplaceableTextures\PassiveButtons\PASBTNAbolishMagic.tga]],
    ICON_AURA_BUFF = [[ReplaceableTextures\CommandButtons\BTNAbolishMagic.tga]],
    ICON_ROAR = [[ReplaceableTextures\CommandButtons\BTNNatureReviveExplosion.blp]],
    MDX = [[Models\AncientBeastMana.mdx]],
    MDX_AURA = [[Models\RegenerationAuraSlow.mdx]],
    MDX_AURA_BUFF = [[Models\NatureRegenBuff.mdx]],
    MDX_ROAR = [[Models\ForestBlessingForm3Start.mdx]],
    MDX_ROAR_BUFF = [[Models\NatureBlessing.mdx]],
    -- Stats
    MAX_LEVEL = 2,
    AOE = 200,
    CAST_RANGE = 300,
    CD = 120,
    COST = function(x) return 175 + 75 * (x - 1) end,
    -- Summon
    ANTI_AIR_RANGE = 500,
    ATK = function(x) return 60 + 60 * (x - 1) end,
    ATK_DICE = 30,
    DEF = function(x) return 5 + 5 * (x - 1) end,
    HP = function(x) return 2500 + 1000 * (x - 1) end,
    MP = function(x) return 1000 + 500 * (x - 1) end,
    HP_LOSS_PER_SEC = 40,
    MP_LOSS_PER_SEC = 20,
    SCALE = function(x) return 1.4 + 0.1 * (x - 1) end,
    SPEED = 350,
    -- Pas
    PAS_MAX_LEVEL = 5,
    PAS_HP_BONUS = 0.05,
    -- Aura
    AURA_AOE = 600,
    AURA_REGEN = 5,
    -- Roar
    ROAR_AOE = 400,
    ROAR_COST = 500,
    ROAR_DUR = 30,
    ROAR_ATK = 0.5,
}
-- Texts
ANCIENT_REINCARNATION.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        [=[Ancient Incarnation (|cffffcc00R|r) - [|cffffcc00Level {v}|r]]=]
    ), FormatString(
        "Incarnates Ancient of Mana by transforming an area of trees (at least 1) with each tree granting <{2},Area{v},%>% bonus hit points. Ancient of Mana slowly evaporates over time, radiating energy that heals nearby friendly units. Has {f1} hit points, {f2} mana points, {f3} base attack damage, and {f4} base armor.{f6}" ..
        "|n" ..
        "|n|cffffcc00Attacks land and air units.|r" ..
        "|n" ..
        "|n|cffffdeadAoe: <{1},Area{v}> units|r" ..
        "|n|cffffdeadCast Range: <{1},Rng{v}> units|r" ..
        "|n|cffffdeadCooldown: <{1},Cool{v}> seconds|r",
        AID.ANCESTRAL_REINCARNATION, AID.POWER_OF_NATURE
    ), FormatString(
        [=[Learn Ancient Incarnation (|cffffcc00R|r) - [|cffffcc00Level %d|r]]=]
    ), FormatString(
        "Incarnates Ancient of Mana by transforming an area of trees. The more trees the spell transforms, the more powerful the incarnation is. Ancient of Mana slowly evaporates over time, radiating energy that heals nearby friendly units." ..
        "|n" ..
        "|n|cffffcc00Attacks land and air units.|r"
    ), FormatString(
        "|cffffcc00Level {v}|r - <{1},Cost{v}> mana cost. {f1} hit points, {f2} mana points, {f3} base attack damage, and {f4} base armor.{f5}",
        AID.ANCESTRAL_REINCARNATION
    ), {
        function(x) return tostring(ANCIENT_REINCARNATION.HP(x)) end,
        function(x) return tostring(ANCIENT_REINCARNATION.MP(x)) end,
        function(x) return tostring(ANCIENT_REINCARNATION.ATK(x)) end,
        function(x) return tostring(ANCIENT_REINCARNATION.DEF(x)) end,
        function(x) return x == 1 and "" or " Can cast Wrath of Nature." end,
        function(x)
            return x == 1 and "" or
                " Can cast Wrath of Nature that increases the attack damage of nearby friendly units."
        end,
    }
)
ANCIENT_REINCARNATION.TOOLTIPS_PAS = AbilityTooltip:new(
    FormatString(
        "Power of Nature"
    ), FormatString(
        "Ancient of Mana is reincarnated with {v} trees, each increasing its hit points by <{1},Area{v},%>%.",
        AID.POWER_OF_NATURE
    )
)
ANCIENT_REINCARNATION.TOOLTIPS_AURA = AbilityTooltip:new(
    FormatString(
        "Radiant Energy"
    ), FormatString(
        "Constantly radiates energy that heals neraby friendly units by <{1},DataB1> hit points per second energy but evaporates over time (losing {f1} mana points and then {f2} hit points every second). ",
        AID.RADIANT_ENERGY
    ), {
        function(x) return tostring(ANCIENT_REINCARNATION.MP_LOSS_PER_SEC) end,
        function(x) return tostring(ANCIENT_REINCARNATION.HP_LOSS_PER_SEC) end,
    }
)
ANCIENT_REINCARNATION.TOOLTIPS_ROAR = AbilityTooltip:new(
    FormatString(
        "|cffffcc00W|rath of Nature"
    ), FormatString(
        "Gives friendly nearby units a <{1},DataA1,%>% bonus to damage. |nLasts <{1},Dur1> seconds.",
        AID.WRATH_OF_NATURE
    )
)

NATURE_AFFINITY = {
    -- Arts
    ICON = [[ReplaceableTextures\PassiveButtons\PASHealingTouch.blp]],
    ICON_BUFF = [[ReplaceableTextures\CommandButtons\BTNHealingTouch.blp]],
    MDX = [[Abilities\Spells\NightElf\Tranquility\TranquilityTarget.mdl]],
    -- Stats
    RANGE = 200,
    REGEN = 1,
}
-- Texts
NATURE_AFFINITY.TOOLTIPS = AbilityTooltip:new(
    FormatString(
        "Nature Affinity"
    ), FormatString(
        "Increases hit point and mana point regeneration by <{1},DataB1> point per second when standing near trees.",
        AID.NATURE_AFFINITY_LIFE
    )
)
