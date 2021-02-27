GlobalState = {}

RegisterNetEvent("loaf_globalstate:updateGlobalstate")
AddEventHandler("loaf_globalstate:updateGlobalstate", function(new_state)
    GlobalState = new_state
end)