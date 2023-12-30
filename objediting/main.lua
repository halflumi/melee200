SCRIPT_MAIN = debug.getinfo(1).source:sub(2)
SCRIPT_ROOT = SCRIPT_MAIN:match("(.*\\)"):sub(1, -2)
PROJECT_ROOT = SCRIPT_ROOT:match("(.*\\)"):sub(1, -2)

local early_loads = {}
table.insert(early_loads, PROJECT_ROOT .. "\\src\\ids.lua") -- ID tables.
table.insert(early_loads, SCRIPT_ROOT .. "\\tool.lua") -- Helper functions.
table.insert(early_loads, SCRIPT_ROOT .. "\\extension.lua") -- ObjEditing extensions.

local late_loads = {}
table.insert(late_loads, SCRIPT_ROOT .. "\\vanilla.lua")
table.insert(late_loads, SCRIPT_ROOT .. "\\war3misc.lua")

for _, v in ipairs(early_loads) do
    dofile(v)
end

-- Do lua files in all the subfolders.
for dir in io.popen('dir "' .. SCRIPT_ROOT .. '" /b /AD /ON'):lines() do
    dir = SCRIPT_ROOT .. "\\" .. dir
    for file in io.popen('dir "' .. dir .. '" /b /s /A-D /O:GN'):lines() do
        assert(file:match("%.lua$"))
        dofile(file)
    end
end

for _, v in ipairs(late_loads) do
    dofile(v)
end
