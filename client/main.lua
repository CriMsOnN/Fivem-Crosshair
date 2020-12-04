-- ALL CITIZEN WAITS (0)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Config.DisableDefaultCrosshair then
            HideHudComponentThisFrame(14)
        end
        if Config.EnableCustomCrosshair then
            if IsPlayerFreeAiming(PlayerId()) and IsPedArmed(GetPlayerPed(-1), 7) and IsPedArmed(GetPlayerPed(-1), 4) then
                -- checked if player is aiming also if player is unarmerd or holding
                DrawRect(0.5, 0.495, 0.001, 0.010, Config.Color.r, Config.Color.g, Config.Color.b, Config.Color.a) -- top
                DrawRect(0.5, 0.510, 0.001, 0.010, Config.Color.r, Config.Color.g, Config.Color.b, Config.Color.a) -- bottom
                DrawRect(0.495, 0.5021, 0.006, 0.002, Config.Color.r, Config.Color.g, Config.Color.b, Config.Color.a) -- left
                DrawRect(0.50455, 0.502, 0.006, 0.002, Config.Color.r, Config.Color.g, Config.Color.b, Config.Color.a) -- right
            end
        end
    end
end)

