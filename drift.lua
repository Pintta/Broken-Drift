local function Pois()
    local Henkilo = GetPlayerPed(-1)
    local Auto = GetVehiclePedIsIn(Henkilo, false)
    local LopetaInitialDragCoeff = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fInitialDragCoeff")-90.22)
    local LopetaDriveInertia = (GetVehicleHandlingFloat(Auto, "CHandlingData", 'fDriveInertia')-0.31)
    local LopetaSteeringLock = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fSteeringLock")-22.0)
    local LopetaTractionCurveMax = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMax")+1.1)
    local LopetaTractionCurveMin = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMin")+0.4)
    local LopetaTractionCurveLateral = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveLateral")-2.5)
    local LopetaLowSpeedTractionLossMult = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fLowSpeedTractionLossMult")+0.57)
    local Nykyinen = GetVehicleMod(Auto, 11)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fInitialDragCoeff', LopetaInitialDragCoeff)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fDriveInertia', LopetaDriveInertia)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fSteeringLock', LopetaSteeringLock)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fTractionCurveMax', LopetaTractionCurveMax)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fTractionCurveMin', LopetaTractionCurveMin)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fTractionCurveLateral', LopetaTractionCurveLateral)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fLowSpeedTractionLossMult', LopetaLowSpeedTractionLossMult)
    SetVehicleEnginePowerMultiplier(Auto, 0.0)					
    SetVehicleModKit(Auto, 0)
    SetVehicleMod(Auto, 11, Nykyinen, true) 
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fInitialDragCoeff")
    GetVehicleHandlingFloat(Auto, "CHandlingData", 'fDriveInertia')
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fSteeringLock")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMax")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMin")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveLateral")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fLowSpeedTractionLossMult")
end
  
local function Auki()
    local Henkilo = GetPlayerPed(-1)
    local Auto = GetVehiclePedIsIn(Henkilo, false)
    local AloitaInitialDragCoeff = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fInitialDragCoeff")+90.22)
    local AloitaDriveInertia = (GetVehicleHandlingFloat(Auto, "CHandlingData", 'fDriveInertia')+0.31)
    local AloitaSteeringLock = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fSteeringLock")+22.0)
    local AloitaTractionCurveMax = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMax")-1.1)
    local AloitaTractionCurveMin = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMin")-0.4)
    local AloitaTractionCurveLateral = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveLateral")+2.5)
    local AloitaLowSpeedTractionLossMult = (GetVehicleHandlingFloat(Auto, "CHandlingData", "fLowSpeedTractionLossMult")-0.57)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fInitialDragCoeff', AloitaInitialDragCoeff)
    if HaeDriveBiasFront == 0.0 then
        SetVehicleEnginePowerMultiplier(Auto, 190.0)
    else
        SetVehicleEnginePowerMultiplier(Auto, 100.0)
    end
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fDriveInertia', AloitaDriveInertia)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fSteeringLock', AloitaSteeringLock)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fTractionCurveMax', AloitaTractionCurveMax)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fTractionCurveMin', AloitaTractionCurveMin)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fTractionCurveLateral', AloitaTractionCurveLateral)
    SetVehicleHandlingFloat(Auto, 'CHandlingData', 'fLowSpeedTractionLossMult', AloitaLowSpeedTractionLossMult)
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fInitialDragCoeff")
    GetVehicleHandlingFloat(Auto, "CHandlingData", 'fDriveInertia')
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fSteeringLock")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMax")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMin")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveLateral")
    GetVehicleHandlingFloat(Auto, "CHandlingData", "fLowSpeedTractionLossMult")
end

CreateThread(function()
    while true do
        Wait(10)-- 10 milliseconds (little bit safe, if you wanna more safety put 50 milliseconds)
        local Henkilo = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(Henkilo, false)
        local Kuljettaja = GetPedInVehicleSeat(Auto, -1)
        if IsPedInAnyVehicle(Henkilo) then	
            if Kuljettaja == Henkilo and IsVehicleOnAllWheels(vehicle) then
                local HaeInitialDragCoeff = GetVehicleHandlingFloat(Auto, "CHandlingData", "fInitialDragCoeff")
                local HaeDriveBiasFront = GetVehicleHandlingFloat(Auto, 'CHandlingData', 'fDriveBiasFront')
                local HaeSteeringLock = GetVehicleHandlingFloat(Auto, "CHandlingData", "fSteeringLock")
                local HaeTractionCurveMax = GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMax")
                local HaeTractionCurveMin = GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveMin")
                local HaeTractionCurveLateral = GetVehicleHandlingFloat(Auto, "CHandlingData", "fTractionCurveLateral")
                local HaeLowSpeedTractionLossMult = GetVehicleHandlingFloat(Auto, "CHandlingData", "fLowSpeedTractionLossMult")
                if IsControlJustReleased(0, 21) and ((GetVehicleClass(vehicle) == 0) or (GetVehicleClass(vehicle) == 1) or (GetVehicleClass(vehicle) == 2) or (GetVehicleClass(vehicle) == 3) or (GetVehicleClass(vehicle) == 4) or (GetVehicleClass(vehicle) == 5) or (GetVehicleClass(vehicle) == 6) or (GetVehicleClass(vehicle) == 7) or (GetVehicleClass(vehicle) == 9)) then
                    if HaeInitialDragCoeff >= 50.0 then
                        Pois()-- Disable drifting mode (Pressing Left Shift Keybind 21)
                    else
                        Auki()-- Enable drifting mode (Pressing Left Shift Keybind 21)
                    end
                end
            end
        end
    end
end)
