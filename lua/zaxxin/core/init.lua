local init = function()
require("zaxxin.core.remap")
require("zaxxin.core.options")
end

local status, err = pcall(init)
if status then
    print("Initialised")
else
    print(debug.traceback())
    print(err)
    require("zaxxin.core.failsafe")
end
