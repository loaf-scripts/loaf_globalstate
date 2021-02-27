GlobalState = {}

RegisterNetEvent("loaf_globalstate:update_global")
AddEventHandler("loaf_globalstate:update_global", function(new_state)
    GlobalState = new_state
end)

CreateThread(function()
    while not NetworkIsSessionStarted() do
        Wait(500)
    end

    TriggerServerEvent("loaf_globalstate:request_global")
end)