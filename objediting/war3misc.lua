local content = ""

local function append(str)
    content = content .. str .. "\n"
end

append("[HERO]")
append("DependencyOr=" ..
    CommaString(
        CommaString(UID.ARTHAS, UID.ANTONIDAS, UID.FURION, UID.KAELTHAS),
        "Hamg,Hblm,Hmkg,Hpal,Obla,Ofar,Oshd,Otch,Edem,Ekee,Emoo,Ewar,Ucrl,Udea,Udre,Ulic,Npbm,Nbrn,Nngs,Nplh,Nbst"
    )
)

append("")

append("[Misc]")
append("MaxBldgSpeed=522.0")
append("MaxHeroLevel=100")
append("MaxUnitSpeed=522.0")

local out  = PROJECT_ROOT .. "\\imports\\war3mapMisc.txt"
local file = io.open(out, "w")
assert(file, "Cannot open " .. out)
file:write(content)
file:close()
