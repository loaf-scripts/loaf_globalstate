if IsDuplicityVersion() then
    -- https://stackoverflow.com/questions/57598440/is-there-a-way-to-listen-for-changes-in-a-lua-table
    local global_state = {}

    GlobalState = setmetatable({}, {
        __index = function(t, k)
            return global_state[k]
        end,

        __newindex = function(t, k, v)
            global_state[k] = v -- update original table
            TriggerClientEvent("loaf_globalstate:update_global", -1, global_state) -- update globalstate for every client
        end
    })

    RegisterNetEvent("loaf_globalstate:request_global")
    AddEventHandler("loaf_globalstate:request_global", function()
        TriggerClientEvent("loaf_globalstate:update_global", source, global_state)
    end)
else
    GlobalState = {}

    RegisterNetEvent("loaf_globalstate:update_global")
    AddEventHandler("loaf_globalstate:update_global", function(new_state)
        for k,v in pairs(new_state) do GlobalState[k] = v end
    end)

    CreateThread(function()
        while not NetworkIsSessionStarted() do
            Wait(500)
        end

        TriggerServerEvent("loaf_globalstate:request_global")
    end)
end
