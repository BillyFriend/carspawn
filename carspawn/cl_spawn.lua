RegisterNetEvent('VehicleSpawn')
AddEventHandler('VehicleSpawn', function(vehicleName)
  local myPed = GetPlayerPed(-1)
  local player = PlayerId()
  local vehicle = GetHashKey(vehicleName)
  RequestModel(vehicle)
  while not HasModelLoaded(vehicle) do
    Wait(1)
  end
  local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 5.0, 0)
  local spawned_car = CreateVehicle(vehicle, coords, GetEntityHeading(myPed), true, false)
  SetVehicleOnGroundProperly(spawned_car)
  SetModelAsNoLongerNeeded(vehicle)
  Citizen.InvokeNative(0xB736A491E64A32CF,Citizen.PointerValueIntInitialized(spawned_car))
end)

Citizen.CreateThread(function()
  while true do
    Wait(1)
  end
end)

-- Made By Billy (RealLife5)