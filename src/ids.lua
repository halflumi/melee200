AID = {
    AREA_HOLY_LIGHT = "AA00",
    AREA_HOLY_LIGHT_SELF = "AA01",
    AREA_HOLY_LIGHT_AREA = "AA02",
    RESONATING_BLADE = "AA03",
    RESONATING_BLADE_VISUAL = "AA04",
    KING_STRIDE_AURA = "AA05",
    KING_STRIDE_AURA_HERO_ATK = "AA06",
    KING_STRIDE_AURA_UNIT_DEF = "AA07",
    KING_STRIDE_AURA_UNIT_ATK = "AA08",
    FROST_BLAST = "AA09",
    FROST_BLAST_NOVA = "AA0A",
    PLOT_ARMOR = "AA0B",
    PLOT_ARMOR_DISABLED = "AA0C",
    PLOT_ARMOR_BUFF = "AA0D",
    PLOT_ARMOR_MAGIC_RES = "AA0E",
    SPIRITUAL_FIRE_BALL = "AA10",
    MANA_WARD = "AA11",
    MANA_WARD_SUMMON = "AA12",
    MANA_WARD_REGEN = { "AA13", "AA14", "AA15", "AA16", "AA17" },
    SUMMON_BLOOD_ELEMENTAL = "AA18",
    BLOOD_ELEMENTAL_RAGE = "AA19",
    BLOOD_ELEMENTAL_RAGE_ACTUAL = "AA1A",
    FROST_STORM = "AA1B",
    MASS_RECALL = "AA1C",
    MASS_RECALL_FORTITUDE = "AA1D",
    MASS_ENTANGLING_ROOTS = "AA20",
    MASS_ENTANGLING_ROOTS_IMPL = "AA21",
    ARMY_OF_NATURE = "AA22",
    ARMY_OF_NATURE_CO_SUMMON = "AA23",
    PROTECTION_OF_NATURE = "AA24",
    PROTECTION_OF_NATURE_IMPL = "AA25",
    ANCESTRAL_REINCARNATION = "AA26",
    ANCESTRAL_REINCARNATION_BUFF = "AA27",
    POWER_OF_NATURE = "AA28",
    RADIANT_ENERGY = "AA29",
    WRATH_OF_NATURE = "AA2A",
    NATURE_AFFINITY = "AA2B",
    NATURE_AFFINITY_LIFE = "AA2C",
    NATURE_AFFINITY_MANA = "AA2D",
}

BID = {
    RESONATING_BLADE = "BA00",
    KING_STRIDE_AURA_DEF = "BA01",
    KING_STRIDE_AURA_ATK = "BA02",
    PLOT_ARMOR = "BA03",
    MANA_WARD = "BA10",
    BLOOD_ELEMENTAL = "BA11",
    BLOOD_ELEMENTAL_RAGE = "BA12",
    FROST_STORM = "EA13",
    MASS_RECALL_FORTITUDE = "EA14",
    ARMY_OF_NATURE = "EA20",
    PROTECTION_OF_NATURE = "EA21",
    RADIANT_ENERGY = "EA22",
    WRATH_OF_NATURE = "EA23",
    NATURE_AFFINITY = "EA24",
}

UID = {
    CASTER_DUMMY = "aa00",
    TARGET_DUMMY = "aa01",
    ARTHAS = "HA00",
    ANTONIDAS = "HA10",
    MANA_WARD = { "ha11", "ha12", "ha13", "ha14", "ha15" },
    BLOOD_ELEMENTAL = { "ha16", "ha17", "ha18", "ha19", "ha1a" },
    FURION = "HA20",
    TREANT_MELEE = "ha21",
    TREANT_RANGED = "ha22",
    ANCIENT_OF_MANA = { "ha23", "ha24" },
}

-- @debug@
-- Assert ID uniqueness.
-- ObjEditing has a stronger check during object generation. This is for better error messages.
local seen = {}
for _, t in ipairs({ AID, BID, UID }) do
    for k, v in pairs(t) do
        assert(not seen[v], string.format("Duplicate ID: %s (%s | %s)", v, seen[v], k))
        seen[v] = k
    end
end
-- @end-debug@
