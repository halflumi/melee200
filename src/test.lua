TEST_PRINT_PROGRESS = true

local total = 0
local running = 1

---@param text string
function DebugPrint(text)
    -- @debug@
    print("DEBUG> " .. text)
    -- @end-debug@
end

---@param name string
---@param func function
function TEST(name, func)
    -- @debug@
    total = total + 1
    OnInit.map(function()
        if TEST_PRINT_PROGRESS then
            print(string.format("Running test %d/%d: %s", running, total, name))
        end
        func()
        running = running + 1
    end)
    -- @end-debug@
end
