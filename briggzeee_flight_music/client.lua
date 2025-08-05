CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local isDriver = GetPedInVehicleSeat(vehicle, -1) == playerPed

        if vehicle and isDriver then
            local vehicleClass = GetVehicleClass(vehicle)
            if vehicleClass == 15 or vehicleClass == 16 then 
                SetAudioFlag("DisableFlightMusic", true)
            else
                SetAudioFlag("DisableFlightMusic", false)
            end
        else
            SetAudioFlag("DisableFlightMusic", false)
        end

        Wait(1000) 
    end
end)
