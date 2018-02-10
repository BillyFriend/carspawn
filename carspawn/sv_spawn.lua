AddEventHandler('chatMessage', function(source, n, message)
  local args = stringsplit(message, " ")
  if (args[1] == "/car") then
    CancelEvent()
    if (args[2] ~= nil) then
      local playerID = tonumber(source)
      local vehicleName = tostring(args[2])
      TriggerClientEvent('VehicleSpawn', playerID, vehicleName)
    else
      local event = 'chatMessage'
      local eventTarget = source
      local messageSender = "SYSTEM"
      local messageSenderColor = {200, 0, 0}
      local message = "Usage: /car <Vehicle_Name>  (for example /car polmav)"
      TriggerClientEvent(event, eventTarget, messageSender, messageSenderColor, message)
    end
  end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

-- Made By Billy (RealLife5)