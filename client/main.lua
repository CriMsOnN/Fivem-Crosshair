local r,g,b,a = 255, 255, 255, 255

RegisterCommand("crosshair", function(source, args, raw)
    if args ~= nil then
        if args[1] == "red" then
            r,g,b,a = 255, 0, 0, 255
        elseif args[1] == "blue" then
            r,g,b,a = 0, 0, 255, 255
        elseif args[1] == "green" then
            r,g,b,a = 0, 255, 0, 255
        elseif args[1] == "yellow" then
            r,g,b,a = 255, 255, 0, 255
        elseif args[1] == "white" then
            r,g,b,a = 255, 255, 255, 255
        end
    else
        TriggerEvent("chatMessage", "[Crosshair]" , {255, 0, 0} , "/crosshair r g b a")
    end
end)

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
                DrawRect(0.5, 0.495, 0.001, 0.010, r, g, b, a) -- top
                DrawRect(0.5, 0.510, 0.001, 0.010, r, g, b, a) -- bottom
                DrawRect(0.495, 0.5021, 0.006, 0.002, r, g, b, a) -- left
                DrawRect(0.50455, 0.502, 0.006, 0.002, r, g, b, a) -- right
            end
        end
    end
end)

