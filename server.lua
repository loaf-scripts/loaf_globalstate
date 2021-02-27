-- https://stackoverflow.com/questions/57598440/is-there-a-way-to-listen-for-changes-in-a-lua-table
local protectedTable = {}

GlobalState = setmetatable({}, {
    __index = function(t, k)
        return protectedTable[k]
    end,

    __newindex = function(t, k, v)
        protectedTable[k] = v   -- update original table
        TriggerClientEvent("loaf_globalstate:updateGlobalstate", -1, protectedTable)
    end
})